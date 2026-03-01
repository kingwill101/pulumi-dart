import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../mocks/mocks.mocks.dart';

class _MyCustomComponentResource extends ComponentResource {
  _MyCustomComponentResource(
    String name, {
    required Input<bool> x,
    ComponentResourceOptions? opts,
  }) : y = x,
       super('my:mod:MyCustomComponentResource', name, {'x': x}, opts);

  final Input<bool> y;

  bool get x => true;
}

void main() {
  group('component resource', () {
    late MockDeploymentImpl mockDeployment;

    setUp(() {
      mockDeployment = MockDeploymentImpl();

      when(
        mockDeployment.readOrRegisterResource(
          resource: anyNamed('resource'),
          remote: anyNamed('remote'),
          newDependency: anyNamed('newDependency'),
          args: anyNamed('args'),
          opts: anyNamed('opts'),
          registerPackageRequest: anyNamed('registerPackageRequest'),
        ),
      ).thenAnswer((invocation) async {
        final resource = invocation.namedArguments[#resource] as Resource;
        resource.resolveUrn(
          'urn:pulumi:stack::project::${resource.getResourceType()}::${resource.getResourceName()}',
        );
      });

      when(mockDeployment.registerResourceOperation(any)).thenAnswer((_) {});

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(DeploymentImpl.clearInstance);

    test('does not transfer input-backed fields onto class outputs', () async {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );

      final component = _MyCustomComponentResource(
        'comp',
        x: Input.fromValue(true),
        opts: ComponentResourceOptions(parent: root),
      );

      expect(component.x, isTrue);
      expect(await component.y.toOutput().getValue(), isTrue);
    });

    test('registerOutputs still registers when outputs are empty', () async {
      when(
        mockDeployment.registerResourceOutputs(any, any),
      ).thenAnswer((_) async {});

      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final component = _MyCustomComponentResource(
        'comp-empty',
        x: Input.fromValue(true),
        opts: ComponentResourceOptions(parent: root),
      );

      component.registerOutputs(<String, dynamic>{});

      final verification = verify(
        mockDeployment.registerResourceOutputs(captureAny, captureAny),
      )..called(1);

      expect(verification.captured.first, same(component));
    });

    test(
      'registerOutputs without explicit map uses default collected outputs',
      () async {
        when(
          mockDeployment.registerResourceOutputs(any, any),
        ).thenAnswer((_) async {});

        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final component = _MyCustomComponentResource(
          'comp-default',
          x: Input.fromValue(true),
          opts: ComponentResourceOptions(parent: root),
        );

        component.registerOutputs();

        final outputCaptor = verify(
          mockDeployment.registerResourceOutputs(any, captureAny),
        )..called(1);
        final output =
            outputCaptor.captured.single as Output<Map<String, dynamic>>;
        expect(await output.getValue(), isEmpty);
      },
    );

    test('registerOutputsAsync resolves and forwards async outputs', () async {
      when(
        mockDeployment.registerResourceOutputs(any, any),
      ).thenAnswer((_) async {});

      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final component = _MyCustomComponentResource(
        'comp-async',
        x: Input.fromValue(true),
        opts: ComponentResourceOptions(parent: root),
      );

      await component.registerOutputsAsync(
        Future.value(<String, dynamic>{'result': 42}),
      );

      final outputCaptor = verify(
        mockDeployment.registerResourceOutputs(any, captureAny),
      )..called(1);
      final output =
          outputCaptor.captured.single as Output<Map<String, dynamic>>;
      expect(await output.getValue(), equals({'result': 42}));
    });
  });
}
