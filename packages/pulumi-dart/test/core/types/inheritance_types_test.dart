import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';
import '../../test_utils/monitor_test_utils.dart';

class _InheritanceTypesMonitor extends BaseMonitor {
  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) {
    return Future.value(monitorpkg.SupportsFeatureResponse(true));
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    final response = RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = request.name;
    response.object = Struct()
      ..fields['foo'] = (Value()
        ..structValue = (Struct()
          ..fields['bar'] = (Value()..stringValue = 'hello')
          ..fields['baz'] = (Value()..stringValue = 'world')));
    return response;
  }
}

class _TypedBaseResource extends CustomResource {
  late final Output<Map<String, dynamic>> foo;

  _TypedBaseResource(String name)
    : super('test:index:MyResource', name, const {}, CustomResourceOptions()) {
    foo = registerOutput<Map<String, dynamic>>('foo');
  }
}

class _TypedSubclassResource extends _TypedBaseResource {
  late final Output<String> combinedValues;

  _TypedSubclassResource(super.name) {
    combinedValues = foo.apply((value) => '${value['bar']} ${value['baz']}');
  }
}

void main() {
  group('inheritance_types', () {
    late _InheritanceTypesMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _InheritanceTypesMonitor();
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('subclass can consume inherited typed output object', () async {
      final resource = _TypedSubclassResource('testResource');
      await deployment.registerOutputs();

      expect(await resource.combinedValues.getValue(), equals('hello world'));
    });
  });
}
