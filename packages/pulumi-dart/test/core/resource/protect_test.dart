import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _ProtectedResource extends CustomResource {
  _ProtectedResource(String name, {required CustomResourceOptions options})
    : super('test:index:ProtectedResource', name, const {}, options);
}

void main() {
  group('protect', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('protect flag is forwarded to registerResource', () async {
      _ProtectedResource('res', options: CustomResourceOptions(protect: true));

      await deployment.registerOutputs();

      final request = monitor.lastRegisterResourceRequest;
      expect(request, isNotNull);
      expect(request!.protect, isTrue);
    });
  });
}
