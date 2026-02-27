import 'package:pulumi_my_namespace_mypkg/pulumi_my_namespace_mypkg.dart'
    as mypkg;
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  test('generated namespace package exposes typed SDK symbols and mappings',
      () {
    final mode = mypkg.ResourceMode.enabled;
    expect(mypkg.ResourceMode.fromValue('enabled'), mode);

    final metadata = mypkg.ResourceMetadata(owner: 'platform', mode: mode);
    final metadataRoundTrip = mypkg.ResourceMetadata.fromMap(metadata.toMap());
    expect(metadataRoundTrip.owner, 'platform');
    expect(metadataRoundTrip.mode, mode);

    final args = mypkg.ResourceArgs(
      mode: Input.fromValue(mode),
      metadata: Input.fromValue(metadata),
    );
    final argsMap = args.toMap();
    expect(argsMap['mode'], isA<Input<String>>());
    expect(argsMap['metadata'], isA<Input<Map<String, dynamic>>>());

    final result = mypkg.GetResourceResult.fromMap({
      'name': 'demo',
      'mode': 'enabled',
      'metadata': {'owner': 'platform', 'mode': 'enabled'},
    });
    expect(result.name, 'demo');
    expect(result.mode, mode);
    expect(result.metadata.owner, 'platform');

    final resourceCtor = mypkg.ResourceType.new;
    final invoke = mypkg.getResource;
    final configRef = mypkg.config;
    expect(resourceCtor, isA<Function>());
    expect(invoke, isA<Function>());
    expect(configRef, isNotNull);
  });
}
