import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _ProviderUnknownResource extends CustomResource {
  _ProviderUnknownResource(
    String name, {
    required CustomResourceOptions options,
  }) : super('aws:s3/bucket:Bucket', name, const {}, options);
}

void main() {
  group('first_class_provider_unknown', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test(
      'provider reference with unknown id is forwarded with unknown sentinel',
      () async {
        final provider = ProviderResource.reference(
          'aws',
          'urn:pulumi:stack::project::pulumi:providers:aws::default',
        );
        _ProviderUnknownResource(
          'bucket',
          options: CustomResourceOptions(provider: provider),
        );

        await deployment.registerOutputs();

        final request = monitor.lastRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.provider, endsWith('::${Constants.unknownValue}'));
      },
    );
  });
}
