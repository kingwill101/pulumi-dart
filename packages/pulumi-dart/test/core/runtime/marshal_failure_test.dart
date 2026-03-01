import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _MarshalResource extends CustomResource {
  _MarshalResource(
    String name, {
    required Map<String, dynamic> props,
    required CustomResourceOptions options,
  }) : super('test:index:MyResource', name, Input.mapToInputs(props), options);
}

class _UnsupportedValue {
  const _UnsupportedValue();
}

void main() {
  group('marshal_failure', () {
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
      'marshal failure bails deployment and stops subsequent registration',
      () async {
        final resourceA = _MarshalResource(
          'resourceA',
          props: const {'value': 'foo'},
          options: CustomResourceOptions(),
        );

        _MarshalResource(
          'resourceB',
          props: const {'value': _UnsupportedValue()},
          options: CustomResourceOptions(dependsOn: [resourceA]),
        );

        await expectLater(
          deployment.registerOutputs(),
          throwsA(isA<Exception>()),
        );

        expect(
          monitor.registerResourceRequests.map((r) => r.name),
          equals(['resourceA']),
        );
      },
    );
  });
}
