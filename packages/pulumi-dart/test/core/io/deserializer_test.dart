import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:test/test.dart';

Value _specialValue(String signature, Map<String, Value> extraFields) {
  final struct = Struct()
    ..fields[Constants.specialSigKey] = (Value()..stringValue = signature)
    ..fields.addAll(extraFields);
  return Value()..structValue = struct;
}

void main() {
  group('deserializer', () {
    test('deserializes remote and string assets', () {
      final remoteAsset = _specialValue(Constants.specialAssetSig, {
        Constants.assetOrArchiveUriName: Value()
          ..stringValue = 'https://example.com/asset',
      });
      final textAsset = _specialValue(Constants.specialAssetSig, {
        Constants.assetTextName: Value()..stringValue = 'hello',
      });

      final remoteData = Deserializer.deserialize<Asset>(remoteAsset);
      final textData = Deserializer.deserialize<Asset>(textAsset);

      expect(remoteData.value, isA<RemoteAsset>());
      expect(
        (remoteData.value as RemoteAsset).url,
        equals('https://example.com/asset'),
      );
      expect(textData.value, isA<StringAsset>());
      expect((textData.value as StringAsset).content, equals('hello'));
    });

    test('deserializes remote archive and nested asset archive', () {
      final remoteArchive = _specialValue(Constants.specialArchiveSig, {
        Constants.assetOrArchiveUriName: Value()
          ..stringValue = 'https://example.com/archive.tgz',
      });

      final nestedAssetArchive = _specialValue(Constants.specialArchiveSig, {
        Constants.archiveAssetsName: Value()
          ..structValue = (Struct()
            ..fields['inner'] = _specialValue(Constants.specialAssetSig, {
              Constants.assetOrArchivePathName: Value()
                ..stringValue = '/tmp/inner.txt',
            })),
      });

      final remoteData = Deserializer.deserialize<Archive>(remoteArchive);
      final nestedData = Deserializer.deserialize<Archive>(nestedAssetArchive);

      expect(remoteData.value, isA<RemoteArchive>());
      expect(
        (remoteData.value as RemoteArchive).url,
        equals('https://example.com/archive.tgz'),
      );

      expect(nestedData.value, isA<AssetArchive>());
      final assets = (nestedData.value as AssetArchive).assets;
      expect(assets, contains('inner'));
      expect(assets['inner'], isA<FileAsset>());
    });

    test('rejects invalid AssetArchive entries', () {
      final invalidArchive = _specialValue(Constants.specialArchiveSig, {
        Constants.archiveAssetsName: Value()
          ..structValue = (Struct()
            ..fields['bad'] = (Value()..stringValue = 'not-an-asset')),
      });

      expect(
        () => Deserializer.deserialize<Archive>(invalidArchive),
        throwsA(isA<Exception>()),
      );
    });

    test('throws on unknown protobuf value kind', () {
      expect(
        () => Deserializer.deserialize<dynamic>(Value()),
        throwsA(
          isA<Exception>().having(
            (error) => error.toString(),
            'message',
            contains('Unknown type when deserializing protobuf'),
          ),
        ),
      );
    });

    test('preserves custom resource references with ids', () async {
      const urn = 'urn:pulumi:dev::project::pkg:index:Thing::thing';
      final reference = _specialValue(Constants.specialResourceSig, {
        Constants.resourceUrnName: Value()..stringValue = urn,
        Constants.resourceIdName: Value()..stringValue = 'thing-id',
      });

      final data = Deserializer.deserialize<CustomResource>(reference);

      expect(data.value, isA<CustomResource>());
      expect(await data.value!.urn.getValue(), urn);
      expect(await data.value!.id.getValue(), 'thing-id');
    });
  });
}
