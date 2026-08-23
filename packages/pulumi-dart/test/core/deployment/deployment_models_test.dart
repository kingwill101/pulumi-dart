import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:test/test.dart';

void main() {
  group('deployment models', () {
    test('register package proto includes required name/version', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-random',
        version: '4.19.1',
      );

      final proto = request.toProto();
      expect(proto.name, 'pulumi-random');
      expect(proto.version, '4.19.1');
      expect(proto.downloadUrl, isEmpty);
      expect(proto.checksums, isEmpty);
      expect(proto.hasParameterization(), isFalse);
    });

    test('register package proto forwards optional download/checksums', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-aws',
        version: '6.0.0',
        downloadUrl: 'https://example.test/plugins/aws.tgz',
        checksums: {
          'sha256': [1, 2, 3],
        },
      );

      final proto = request.toProto();
      expect(proto.downloadUrl, 'https://example.test/plugins/aws.tgz');
      expect(proto.checksums.containsKey('sha256'), isTrue);
      expect(proto.checksums['sha256'], orderedEquals([1, 2, 3]));
    });

    test('register package proto maps parameterization values', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-pkg',
        version: '1.2.3',
        parameterization: deployment_models.Parameterization(
          name: 'pkg',
          version: '2.0.0',
          value: [9, 8, 7],
        ),
      );

      final proto = request.toProto();
      expect(proto.hasParameterization(), isTrue);
      expect(proto.parameterization.name, 'pkg');
      expect(proto.parameterization.version, '2.0.0');
      expect(proto.parameterization.value, orderedEquals([9, 8, 7]));
    });

    test('register package proto defaults null parameterization fields', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-pkg',
        version: '1.2.3',
        parameterization: deployment_models.Parameterization(),
      );

      final proto = request.toProto();
      expect(proto.hasParameterization(), isTrue);
      expect(proto.parameterization.name, isEmpty);
      expect(proto.parameterization.version, isEmpty);
      expect(proto.parameterization.value, isEmpty);
    });

    test('register package proto maps extension parameterization', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-base',
        version: '1.2.3',
        extensionParameterization: deployment_models.Parameterization(
          name: 'extension',
          version: '4.5.6',
          value: [1, 3, 5],
        ),
      );

      final proto = request.toProto();
      expect(proto.hasExtension_6(), isTrue);
      expect(proto.extension_6.name, 'extension');
      expect(proto.extension_6.version, '4.5.6');
      expect(proto.extension_6.value, orderedEquals([1, 3, 5]));
    });

    test(
      'cache identity is checksum-order independent and parameter-aware',
      () {
        deployment_models.RegisterPackageRequest request(
          Map<String, List<int>> checksums,
          List<int> value,
        ) => deployment_models.RegisterPackageRequest(
          name: 'pulumi-base',
          version: '1.2.3',
          checksums: checksums,
          extensionParameterization: deployment_models.Parameterization(
            name: 'extension',
            version: '4.5.6',
            value: value,
          ),
        );

        expect(
          request(
            {
              'z': [2],
              'a': [1],
            },
            [3],
          ).cacheKey,
          request(
            {
              'a': [1],
              'z': [2],
            },
            [3],
          ).cacheKey,
        );
        expect(
          request(
            {
              'a': [1],
            },
            [3],
          ).cacheKey,
          isNot(
            request(
              {
                'a': [1],
              },
              [4],
            ).cacheKey,
          ),
        );
      },
    );
  });
}
