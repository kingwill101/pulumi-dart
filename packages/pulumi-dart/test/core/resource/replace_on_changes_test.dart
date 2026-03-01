import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _ReplaceOnChangesResource extends CustomResource {
  _ReplaceOnChangesResource(
    String name, {
    required CustomResourceOptions options,
  }) : super('test:index:ReplaceOnChanges', name, const {}, options);
}

void main() {
  group('replace_on_changes', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('replaceOnChanges values are forwarded to registerResource', () async {
      _ReplaceOnChangesResource(
        'res',
        options: CustomResourceOptions(
          replaceOnChanges: ['tags', 'metadata.labels'],
        ),
      );

      await deployment.registerOutputs();

      final request = monitor.lastRegisterResourceRequest;
      expect(request, isNotNull);
      expect(
        request!.replaceOnChanges,
        orderedEquals(['tags', 'metadata.labels']),
      );
    });
  });
}
