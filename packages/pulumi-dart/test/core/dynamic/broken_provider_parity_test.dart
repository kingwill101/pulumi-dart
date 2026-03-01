import 'dart:async';

import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _UnsupportedNestedValue {
  const _UnsupportedNestedValue();
}

class _BrokenDynamicResource extends dyn.Resource {
  _BrokenDynamicResource(String name)
    : super(
        dyn.SerializedProviderReference.fromValue('dynamic-provider'),
        name,
        pulumi.Input.mapToInputs(<String, dynamic>{
          'x': <String, dynamic>{'my_key_1': const _UnsupportedNestedValue()},
        }),
      );
}

void main() {
  group('dynamic broken provider parity', () {
    late CapturingRegisterMonitor monitor;
    late pulumi.DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      pulumi.DeploymentImpl.clearInstance();
    });

    test('type mismatches fail quickly rather than hanging', () async {
      final errors = <Object>[];

      await runZonedGuarded(
        () async {
          _BrokenDynamicResource('broken');
          await Future<void>.delayed(const Duration(milliseconds: 10));
          await expectLater(
            deployment.registerOutputs().timeout(const Duration(seconds: 2)),
            throwsA(isA<Exception>()),
          );
          await Future<void>.delayed(const Duration(milliseconds: 10));
        },
        (error, _) {
          errors.add(error);
        },
      );

      expect(errors, isNotEmpty);
      expect(errors.first, isA<Exception>());
      expect(monitor.registerResourceRequests, isEmpty);
    });
  });
}
