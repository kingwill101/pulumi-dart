import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _LargeResource extends CustomResource {
  _LargeResource(String name, Map<String, Input<dynamic>> props)
    : super('test:index:LargeResource', name, props, CustomResourceOptions());
}

void main() {
  group('large_resource', () {
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
      'serializes a large number of properties without truncation',
      () async {
        final props = <String, Input<dynamic>>{};
        for (var i = 0; i < 500; i++) {
          props['k$i'] = Input.fromValue('v$i');
        }

        _LargeResource('big', props);
        await deployment.registerOutputs();

        final request = monitor.lastRegisterResourceRequest;
        expect(request, isNotNull);
        final obj = StructConverter.fromStruct(request!.object);
        expect(obj.length, equals(500));
        expect(obj['k0'], equals('v0'));
        expect(obj['k499'], equals('v499'));
      },
    );
  });
}
