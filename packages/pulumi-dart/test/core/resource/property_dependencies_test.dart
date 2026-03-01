import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _DependencyResource extends CustomResource {
  _DependencyResource(String name)
    : super(
        'test:index:DependencyResource',
        name,
        const {},
        CustomResourceOptions(),
      );
}

class _PropertyDependentResource extends CustomResource {
  _PropertyDependentResource(String name, {required Resource dep})
    : super('test:index:PropertyDependentResource', name, {
        'ref': Input.fromValue(dep),
      }, CustomResourceOptions());
}

class _NestedPropertyDependentResource extends CustomResource {
  _NestedPropertyDependentResource(
    String name, {
    required Resource depA,
    required Resource depB,
  }) : super('test:index:NestedPropertyDependentResource', name, {
         'nested': Input.fromValue(<String, dynamic>{
           'first': depA,
           'repeat': <Resource>[depA, depA],
           'second': depB,
         }),
       }, CustomResourceOptions());
}

void main() {
  group('property_dependencies', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('propertyDependencies include referenced resource URN', () async {
      final dep = _DependencyResource('dep');
      _PropertyDependentResource('target', dep: dep);

      await deployment.registerOutputs();

      expect(monitor.registerResourceRequests, hasLength(2));
      final targetRequest = monitor.registerResourceRequests.firstWhere(
        (r) => r.name == 'target',
      );
      expect(targetRequest.propertyDependencies.containsKey('ref'), isTrue);

      final depUrn = await dep.urn.getValue();
      final refDeps = targetRequest.propertyDependencies['ref']!.urns;
      expect(refDeps, contains(depUrn));
    });

    test(
      'propertyDependencies include nested references and deduplicate URNs',
      () async {
        final depA = _DependencyResource('depA');
        final depB = _DependencyResource('depB');
        _NestedPropertyDependentResource('target', depA: depA, depB: depB);

        await deployment.registerOutputs();

        expect(monitor.registerResourceRequests, hasLength(3));
        final targetRequest = monitor.registerResourceRequests.firstWhere(
          (r) => r.name == 'target',
        );

        expect(
          targetRequest.propertyDependencies.containsKey('nested'),
          isTrue,
        );
        final nestedDeps = targetRequest.propertyDependencies['nested']!.urns;

        final depAUrn = await depA.urn.getValue();
        final depBUrn = await depB.urn.getValue();

        expect(nestedDeps, containsAll(<String>[depAUrn, depBUrn]));
        expect(nestedDeps.toSet(), hasLength(2));
      },
    );
  });
}
