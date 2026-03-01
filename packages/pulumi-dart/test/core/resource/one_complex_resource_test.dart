import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _OneComplexResource extends CustomResource {
  _OneComplexResource(String name)
    : super('test:index:OneComplexResource', name, {
        'name': Input.fromValue('example'),
        'config': Input.fromValue({
          'enabled': Input.fromValue(true),
          'ports': Input.fromValue([80, 443]),
          'metadata': Input.fromValue({'team': Input.fromValue('platform')}),
        }),
        'tags': Input.fromValue(['a', 'b']),
      }, CustomResourceOptions());
}

void main() {
  group('one_complex_resource', () {
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
      'serializes nested input structures into register request object',
      () async {
        _OneComplexResource('complex');

        await deployment.registerOutputs();

        expect(monitor.registerResourceRequests, hasLength(1));
        final request = monitor.registerResourceRequests.single;
        final obj = StructConverter.fromStruct(request.object);
        expect(
          obj,
          equals({
            'name': 'example',
            'config': {
              'enabled': true,
              'ports': [80, 443],
              'metadata': {'team': 'platform'},
            },
            'tags': ['a', 'b'],
          }),
        );
      },
    );
  });
}
