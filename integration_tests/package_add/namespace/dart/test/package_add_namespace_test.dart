import 'package:pulumi_my_namespace_mypkg/pulumi_my_namespace_mypkg.dart'
    as mypkg;
import 'package:pulumi_my_namespace_mypkg/index.dart' as mypkg_index;
import 'package:pulumi_my_namespace_mypkg/src/config/config.dart'
    as mypkg_config;
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  test('generated namespace package exposes typed SDK symbols and mappings',
      () {
    final mode = mypkg_index.ResourceMode.enabled;
    expect(mypkg_index.ResourceMode.fromValue('enabled'), mode);

    final metadata =
        mypkg.index.ResourceMetadata(owner: 'platform', mode: mode);
    final metadataRoundTrip =
        mypkg_index.ResourceMetadata.fromMap(metadata.toMap());
    expect(metadataRoundTrip.owner, 'platform');
    expect(metadataRoundTrip.mode, mode);

    final args = mypkg.index.ResourceArgs(
      mode: mode,
      metadata: metadata,
    );
    final argsMap = args.toMap();
    expect(argsMap['mode'], isA<Input<String>>());
    expect(argsMap['metadata'], isA<Input<Map<String, dynamic>>>());

    final result = mypkg_index.GetResourceResult.fromMap({
      'name': 'demo',
      'mode': 'enabled',
      'metadata': {'owner': 'platform', 'mode': 'enabled'},
    });
    expect(result.name, 'demo');
    expect(result.mode, mode);
    expect(result.metadata.owner, 'platform');

    final resourceCtor = mypkg.index.ResourceType;
    final invoke = mypkg.index.getResource;
    final configRef = mypkg_config.config;
    expect(resourceCtor, isA<Function>());
    expect(invoke, isA<Function>());
    expect(configRef, isNotNull);
  });
}
