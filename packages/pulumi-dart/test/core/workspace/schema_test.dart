import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:test/test.dart';

void main() {
  group('schema', () {
    test('register package request maps schema-related metadata to proto', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-aws',
        version: '6.0.0',
        downloadUrl: 'https://example.test/plugins/aws.tgz',
        checksums: {
          'sha256': [1, 2, 3],
        },
        parameterization: deployment_models.Parameterization(
          name: 'terraform-provider',
          version: '0.10.0',
          value: [9, 8, 7],
        ),
      );

      final proto = request.toProto();
      expect(proto.name, equals('pulumi-aws'));
      expect(proto.version, equals('6.0.0'));
      expect(proto.downloadUrl, equals('https://example.test/plugins/aws.tgz'));
      expect(proto.checksums.containsKey('sha256'), isTrue);
      expect(proto.checksums['sha256'], orderedEquals([1, 2, 3]));
      expect(proto.parameterization.name, equals('terraform-provider'));
      expect(proto.parameterization.version, equals('0.10.0'));
      expect(proto.parameterization.value, orderedEquals([9, 8, 7]));
    });
  });
}
