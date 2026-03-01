import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _ProtectParent extends CustomResource {
  _ProtectParent(String name)
    : super(
        'test:index:ProtectParent',
        name,
        const {},
        CustomResourceOptions(protect: true),
      );
}

class _ProtectChild extends CustomResource {
  _ProtectChild(String name, {required CustomResourceOptions options})
    : super('test:index:ProtectChild', name, const {}, options);
}

void main() {
  group('inherit_defaults', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('child resource inherits protect from parent when unset', () async {
      final parent = _ProtectParent('parent');
      _ProtectChild('child', options: CustomResourceOptions(parent: parent));

      await deployment.registerOutputs();

      final childRequest = monitor.registerResourceRequests.firstWhere(
        (r) => r.name == 'child',
      );
      expect(childRequest.protect, isTrue);
    });
  });
}
