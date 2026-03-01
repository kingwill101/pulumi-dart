import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';
import '../../test_utils/monitor_test_utils.dart';

class _InheritanceTranslationMonitor extends BaseMonitor {
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
      ..fields['someValue'] = (Value()..stringValue = 'hello')
      ..fields['anotherValue'] = (Value()..stringValue = 'world')
      ..fields['some_value'] = (Value()..stringValue = 'hello')
      ..fields['another_value'] = (Value()..stringValue = 'world');
    return response;
  }
}

class _BaseResource extends CustomResource {
  late final Output<String> someValue;
  late final Output<String> anotherValue;

  _BaseResource(String name)
    : super('test:index:MyResource', name, const {}, CustomResourceOptions()) {
    someValue = registerOutput<String>('someValue');
    anotherValue = registerOutput<String>('anotherValue');
  }
}

class _SubclassResource extends _BaseResource {
  late final Output<String> combinedValues;

  _SubclassResource(super.name) {
    combinedValues = Output.tuple(
      someValue,
      anotherValue,
    ).apply((pair) => '${pair.$1} ${pair.$2}');
  }
}

class _SubclassSubclassResource extends _SubclassResource {
  late final Output<String> newValue;

  _SubclassSubclassResource(super.name) {
    newValue = combinedValues.apply((value) => '$value!');
  }
}

class _LegacyBaseResource extends CustomResource {
  late final Output<String> someValue;
  late final Output<String> anotherValue;

  _LegacyBaseResource(String name)
    : super('test:index:MyResource', name, const {}, CustomResourceOptions()) {
    someValue = registerOutput<String>('some_value');
    anotherValue = registerOutput<String>('another_value');
  }
}

class _LegacySubclassResource extends _LegacyBaseResource {
  late final Output<String> combinedValues;

  _LegacySubclassResource(super.name) {
    combinedValues = Output.tuple(
      someValue,
      anotherValue,
    ).apply((pair) => '${pair.$1} ${pair.$2}');
  }
}

class _LegacySubclassSubclassResource extends _LegacySubclassResource {
  late final Output<String> newValue;

  _LegacySubclassSubclassResource(super.name) {
    newValue = combinedValues.apply((value) => '$value!');
  }
}

void main() {
  group('inheritance_translation', () {
    late _InheritanceTranslationMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _InheritanceTranslationMonitor();
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

    test(
      'subclasses preserve inherited outputs across translation styles',
      () async {
        final r1 = _SubclassResource('r1');
        final r2 = _SubclassSubclassResource('r2');
        final r3 = _LegacySubclassResource('r3');
        final r4 = _LegacySubclassSubclassResource('r4');

        await deployment.registerOutputs();

        expect(await r1.someValue.getValue(), equals('hello'));
        expect(await r1.anotherValue.getValue(), equals('world'));
        expect(await r1.combinedValues.getValue(), equals('hello world'));

        expect(await r2.someValue.getValue(), equals('hello'));
        expect(await r2.anotherValue.getValue(), equals('world'));
        expect(await r2.combinedValues.getValue(), equals('hello world'));
        expect(await r2.newValue.getValue(), equals('hello world!'));

        expect(await r3.someValue.getValue(), equals('hello'));
        expect(await r3.anotherValue.getValue(), equals('world'));
        expect(await r3.combinedValues.getValue(), equals('hello world'));

        expect(await r4.someValue.getValue(), equals('hello'));
        expect(await r4.anotherValue.getValue(), equals('world'));
        expect(await r4.combinedValues.getValue(), equals('hello world'));
        expect(await r4.newValue.getValue(), equals('hello world!'));
      },
    );
  });
}
