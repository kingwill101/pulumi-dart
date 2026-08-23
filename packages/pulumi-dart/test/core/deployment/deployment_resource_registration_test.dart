import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart' hide RegisterPackageRequest;
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart'
    show
        ReadResourceRequest,
        ReadResourceResponse,
        RegisterPackageRequest,
        RegisterPackageResponse,
        RegisterResourceOutputsRequest,
        RegisterResourceRequest,
        RegisterResourceResponse,
        ResourceCallRequest,
        ResourceInvokeRequest,
        ResourceInvokeResponse,
        ResourceMonitorClient;
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';

class _FakeMonitor implements monitorpkg.Monitor {
  RegisterResourceRequest? capturedRegisterResourceRequest;
  ReadResourceRequest? capturedReadResourceRequest;
  final List<RegisterResourceRequest> capturedRegisterResourceRequests = [];
  RegisterPackageRequest? capturedRegisterPackageRequest;
  final List<RegisterPackageRequest> capturedRegisterPackageRequests = [];
  Object? registerPackageError;
  Object? registerResourceError;
  String registerPackageRef = 'pkg-ref-default';
  bool supportsFeatureValue = true;
  Object? supportsFeatureError;
  final List<String> requestedFeatures = [];

  @override
  ResourceMonitorClient get client =>
      throw StateError('client is not used in this test harness');

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) async {
    requestedFeatures.add(request.id);
    if (supportsFeatureError != null) {
      throw supportsFeatureError!;
    }
    return monitorpkg.SupportsFeatureResponse(supportsFeatureValue);
  }

  @override
  Future<ResourceInvokeResponse> invoke(ResourceInvokeRequest request) async {
    throw GrpcError.unimplemented('invoke not used in this test');
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    throw GrpcError.unimplemented('call not used in this test');
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    capturedRegisterPackageRequest = request;
    capturedRegisterPackageRequests.add(request);
    if (registerPackageError != null) {
      throw registerPackageError!;
    }
    return RegisterPackageResponse(ref: registerPackageRef);
  }

  @override
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    capturedReadResourceRequest = request;
    return ReadResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..properties = Struct();
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    capturedRegisterResourceRequest = request;
    capturedRegisterResourceRequests.add(request);
    if (registerResourceError != null) {
      throw registerResourceError!;
    }
    return RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = '${request.name}-id'
      ..object = Struct();
  }

  @override
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    return Empty();
  }
}

class _PackageBackedResource extends CustomResource {
  _PackageBackedResource(
    String name, {
    required deployment_models.RegisterPackageRequest registerPackageRequest,
    CustomResourceOptions? options,
  }) : super(
         'pkg:index:Thing',
         name,
         const {},
         options ?? CustomResourceOptions(),
         registerPackageRequest: registerPackageRequest,
       );
}

class _RichOptionsResource extends CustomResource {
  _RichOptionsResource(
    String name, {
    required CustomResourceOptions options,
    required Resource dependencyForProperty,
  }) : super('pkg:index:RichOptions', name, {
         'plain': Input.fromValue('value'),
         'withDep': Input.fromValue(dependencyForProperty),
       }, options);
}

class _TransformEnabledResource extends CustomResource {
  _TransformEnabledResource(
    String name, {
    required CustomResourceOptions options,
  }) : super('pkg:index:TransformEnabled', name, const {}, options);
}

class _ComponentWithProvider extends ComponentResource {
  _ComponentWithProvider(String name, ComponentResourceOptions options)
    : super('pkg:index:ComponentWithProvider', name, const {}, options);
}

class _DependsOnLeafResource extends CustomResource {
  _DependsOnLeafResource(String name, CustomResourceOptions options)
    : super('pkg:index:DependsOnLeaf', name, const {}, options);
}

class _DependsOnNestedComponent extends ComponentResource {
  _DependsOnNestedComponent(
    String name,
    int depth, {
    ComponentResourceOptions? options,
  }) : super(
         'pkg:index:DependsOnComponent',
         '$name-$depth',
         {'depth': Input.fromValue(depth)},
         options ?? ComponentResourceOptions(),
       ) {
    if (depth > 0) {
      _DependsOnNestedComponent(
        name,
        depth - 1,
        options: ComponentResourceOptions(parent: this),
      );
    } else {
      _DependsOnLeafResource('$name-leaf', CustomResourceOptions(parent: this));
    }
  }
}

class _DependsOnTargetResource extends CustomResource {
  _DependsOnTargetResource(String name, CustomResourceOptions options)
    : super('pkg:index:DependsOnTarget', name, const {}, options);
}

class _RemoteComponentWithUnknownNestedInput extends ComponentResource {
  _RemoteComponentWithUnknownNestedInput(String name)
    : super(
        'pkg:index:RemoteWithUnknownNested',
        name,
        {
          'taskDefinitionArgs': Input.fromValue({
            'container': {
              'name': 'service-container',
              'image': Output.createUnknown<String>(),
            },
          }),
        },
        ComponentResourceOptions(),
        remote: true,
      );
}

void main() {
  group('deployment resource registration', () {
    late _FakeMonitor monitor;
    late DeploymentImpl deployment;

    Future<void> expectResourceFailure(
      Resource resource,
      Matcher matcher,
    ) async {
      for (final source in resource.completionSources.values) {
        source.output.getData().then((_) {}, onError: (_) {});
      }

      await expectLater(deployment.registerOutputs(), throwsA(matcher));

      final urn = resource.urn.getValue();
      final id = resource is CustomResource ? resource.id.getValue() : null;

      await expectLater(urn, throwsA(matcher));
      if (id != null) {
        await expectLater(id, throwsA(matcher));
      }
    }

    setUp(() {
      monitor = _FakeMonitor();
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
      'forwards registerPackage packageRef and ignoreChanges to monitor',
      () async {
        monitor.registerPackageRef = 'pkg-ref-123';

        _PackageBackedResource(
          'thing',
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-pkg',
            version: '1.0.0',
          ),
          options: CustomResourceOptions(ignoreChanges: ['a', 'b.c']),
        );

        await deployment.registerOutputs();

        expect(monitor.capturedRegisterPackageRequest, isNotNull);
        expect(monitor.capturedRegisterPackageRequest!.name, 'pulumi-pkg');

        final request = monitor.capturedRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.packageRef, 'pkg-ref-123');
        expect(request.ignoreChanges, orderedEquals(['a', 'b.c']));
      },
    );

    test(
      'deduplicates identical package registrations in a deployment',
      () async {
        final request = deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
          extensionParameterization: deployment_models.Parameterization(
            name: 'extension',
            version: '2.0.0',
            value: [1, 2, 3],
          ),
        );

        _PackageBackedResource('one', registerPackageRequest: request);
        _PackageBackedResource('two', registerPackageRequest: request);
        await deployment.registerOutputs();

        expect(monitor.capturedRegisterPackageRequests, hasLength(1));
        expect(monitor.capturedRegisterResourceRequests, hasLength(2));
        expect(
          monitor.capturedRegisterResourceRequests.map(
            (item) => item.packageRef,
          ),
          everyElement('pkg-ref-default'),
        );
      },
    );

    test(
      'forwards package reference when reading an existing resource',
      () async {
        _PackageBackedResource(
          'existing',
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-base',
            version: '1.0.0',
            extensionParameterization: deployment_models.Parameterization(
              name: 'extension',
              version: '2.0.0',
              value: [1, 2, 3],
            ),
          ),
          options: CustomResourceOptions(id: Input.fromValue('existing-id')),
        );

        await deployment.registerOutputs();

        expect(monitor.capturedReadResourceRequest, isNotNull);
        expect(
          monitor.capturedReadResourceRequest!.packageRef,
          'pkg-ref-default',
        );
        expect(monitor.capturedRegisterResourceRequest, isNull);
      },
    );

    test('surfaces registerPackage failure before resource RPC', () async {
      monitor.registerPackageError = StateError('register package failed');

      final resource = _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
      );

      final failureMatcher = predicate(
        (error) => error.toString().contains('register package failed'),
      );
      await expectResourceFailure(resource, failureMatcher);
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test(
      'evicts failed package registrations so they can be retried',
      () async {
        final request = deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        );
        monitor.registerPackageError = StateError('temporary failure');

        await expectLater(
          deployment.resolvePackageRef(request),
          throwsStateError,
        );
        monitor.registerPackageError = null;

        expect(await deployment.resolvePackageRef(request), 'pkg-ref-default');
        expect(monitor.capturedRegisterPackageRequests, hasLength(2));
      },
    );

    test(
      'resource registration failures fail pending outputs before rethrow',
      () async {
        monitor.registerResourceError = Exception('register resource failed');

        final resource = _PackageBackedResource(
          'thing',
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-pkg',
            version: '1.0.0',
          ),
        );
        final pending = resource.registerOutput<String>('status');

        final failureMatcher = predicate(
          (error) => error.toString().contains('register resource failed'),
        );
        await expectResourceFailure(resource, failureMatcher);
        await expectLater(pending.getData(), throwsA(isA<Exception>()));
      },
    );

    test('rejects invalid ignoreChanges paths before resource RPC', () async {
      final resource = _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['valid', '  ']),
      );

      final failureMatcher = predicate(
        (error) =>
            error.toString().contains('ignoreChanges[1] must be a non-empty'),
      );
      await expectResourceFailure(resource, failureMatcher);
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test(
      'maps rich resource options and dependencies into register request',
      () async {
        final parent = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Parent::parent',
        );
        final depA = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Dep::a',
        );
        final depB = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Dep::b',
        );
        final deletedWith = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:DeletedWith::d',
        );

        final providerPrimary = ProviderResource.reference(
          'pkg',
          'urn:pulumi:stack::project::pulumi:providers:pkg::primary',
          id: 'primary-id',
        );
        final providerSecondary = ProviderResource.reference(
          'other',
          'urn:pulumi:stack::project::pulumi:providers:other::secondary',
          id: 'secondary-id',
        );
        final propertyDependency = ProviderResource.reference(
          'dep',
          'urn:pulumi:stack::project::pulumi:providers:dep::property',
          id: 'property-id',
        );

        _RichOptionsResource(
          'rich',
          dependencyForProperty: propertyDependency,
          options: CustomResourceOptions(
            parent: parent,
            dependsOn: [depB, depA],
            protect: true,
            provider: providerPrimary,
            providers: [providerSecondary],
            aliases: [Alias(name: Input.fromValue('legacy-name'))],
            version: '2.3.4',
            pluginDownloadURL: 'https://example.com/plugin.tgz',
            customTimeouts: const CustomTimeouts(
              create: '1m',
              update: '2m',
              delete: '3m',
              read: '4m',
            ),
            deleteBeforeReplace: true,
            retainOnDelete: true,
            deletedWith: deletedWith,
            additionalSecretOutputs: ['secretA', 'secretB'],
            ignoreChanges: [' plain ', 'nested.value'],
            replacementTrigger: {'reason': 'rotation'},
          ),
        );

        await deployment.registerOutputs();

        final request = monitor.capturedRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.type, 'pkg:index:RichOptions');
        expect(request.name, 'rich');
        expect(request.custom, isTrue);
        expect(request.parent, await parent.urn.getValue());
        expect(
          request.dependencies,
          unorderedEquals([
            await depB.urn.getValue(),
            await depA.urn.getValue(),
            await propertyDependency.urn.getValue(),
          ]),
        );
        expect(request.protect, isTrue);
        expect(
          request.provider,
          equals(await ProviderResource.register(providerPrimary)),
        );
        expect(
          request.providers['other'],
          equals(await ProviderResource.register(providerSecondary)),
        );
        expect(request.aliases, hasLength(1));
        expect(request.aliasSpecs, isTrue);
        expect(request.version, '2.3.4');
        expect(request.pluginDownloadURL, 'https://example.com/plugin.tgz');
        expect(request.deleteBeforeReplace, isTrue);
        expect(request.deleteBeforeReplaceDefined, isTrue);
        expect(request.customTimeouts.create_1, '1m');
        expect(request.customTimeouts.update, '2m');
        expect(request.customTimeouts.delete, '3m');
        expect(request.customTimeouts.read, '4m');
        expect(request.retainOnDelete, isTrue);
        expect(request.deletedWith, await deletedWith.urn.getValue());
        expect(request.additionalSecretOutputs, ['secretA', 'secretB']);
        expect(request.ignoreChanges, ['plain', 'nested.value']);
        expect(request.replacementTrigger.hasStructValue(), isTrue);
        expect(
          request.replacementTrigger.structValue.fields['reason']?.stringValue,
          'rotation',
        );
        expect(request.propertyDependencies, contains('withDep'));
        expect(
          request.propertyDependencies['withDep']!.urns,
          equals([await propertyDependency.urn.getValue()]),
        );
      },
    );

    test(
      'dependsOn includes transitive child resource urns for component dependencies',
      () async {
        final componentDependency = _DependsOnNestedComponent('dep', 3);
        _DependsOnTargetResource(
          'target',
          CustomResourceOptions(dependsOn: [componentDependency]),
        );

        await deployment.registerOutputs();

        final requests = monitor.capturedRegisterResourceRequests;
        final leafRequest = requests.firstWhere(
          (request) => request.type == 'pkg:index:DependsOnLeaf',
        );
        final targetRequest = requests.firstWhere(
          (request) => request.type == 'pkg:index:DependsOnTarget',
        );

        final expectedLeafUrn =
            'urn:pulumi:stack::project::${leafRequest.type}::${leafRequest.name}';
        expect(targetRequest.dependencies, contains(expectedLeafUrn));
      },
    );

    test(
      'component resource maps singular provider into providers map',
      () async {
        final provider = ProviderResource.reference(
          'pkg',
          'urn:pulumi:stack::project::pulumi:providers:pkg::component',
          id: 'provider-id',
        );

        _ComponentWithProvider(
          'cmp',
          ComponentResourceOptions(provider: provider),
        );

        await deployment.registerOutputs();

        final request = monitor.capturedRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.custom, isFalse);
        expect(request.provider, isEmpty);
        expect(
          request.providers['pkg'],
          equals(await ProviderResource.register(provider)),
        );
      },
    );

    test(
      'remote component registration preserves nested object shape with unknown leaf values',
      () async {
        _RemoteComponentWithUnknownNestedInput('remote-unknown');

        await deployment.registerOutputs();

        final request = monitor.capturedRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.type, equals('pkg:index:RemoteWithUnknownNested'));
        expect(request.remote, isTrue);
        expect(request.custom, isFalse);

        final taskDefinitionValue = request.object.fields['taskDefinitionArgs'];
        expect(taskDefinitionValue, isNotNull);
        expect(
          taskDefinitionValue!.whichKind(),
          equals(Value_Kind.structValue),
        );

        final containerValue =
            taskDefinitionValue.structValue.fields['container'];
        expect(containerValue, isNotNull);
        expect(containerValue!.whichKind(), equals(Value_Kind.structValue));
        expect(
          containerValue.structValue.fields['image']?.stringValue,
          equals(Constants.unknownValue),
        );
      },
    );

    test('rejects ignoreChanges path starting with dot', () async {
      final resource = _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['.bad']),
      );

      final failureMatcher = predicate(
        (error) => error.toString().contains(
          'contains an invalid property path: ".bad".',
        ),
      );
      await expectResourceFailure(resource, failureMatcher);
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test('rejects ignoreChanges path ending with dot', () async {
      final resource = _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['bad.']),
      );

      final failureMatcher = predicate(
        (error) => error.toString().contains(
          'contains an invalid property path: "bad.".',
        ),
      );
      await expectResourceFailure(resource, failureMatcher);
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test('rejects ignoreChanges path containing empty segments', () async {
      final resource = _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['bad..path']),
      );

      final failureMatcher = predicate(
        (error) => error.toString().contains(
          'contains an invalid property path: "bad..path".',
        ),
      );
      await expectResourceFailure(resource, failureMatcher);
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test(
      'resource transform registration fails with message when transforms unsupported',
      () async {
        monitor.supportsFeatureValue = false;

        final resource = _TransformEnabledResource(
          'transforming',
          options: CustomResourceOptions(
            resourceTransforms: [
              (
                ResourceTransformArgs args, [
                CancellationToken? cancellationToken,
              ]) async => null,
            ],
          ),
        );

        await expectResourceFailure(
          resource,
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains(
              'The Pulumi CLI does not support transforms. Please update the Pulumi CLI.',
            ),
          ),
        );
        expect(monitor.requestedFeatures, equals(['transforms']));
        expect(monitor.capturedRegisterResourceRequest, isNull);
      },
    );

    test(
      'resource transform registration fails with message when supportsFeature is unimplemented',
      () async {
        monitor.supportsFeatureError = GrpcError.unimplemented(
          'supportsFeature RPC unavailable',
        );

        final resource = _TransformEnabledResource(
          'transforming',
          options: CustomResourceOptions(
            resourceTransforms: [
              (
                ResourceTransformArgs args, [
                CancellationToken? cancellationToken,
              ]) async => null,
            ],
          ),
        );
        final failureMatcher = predicate(
          (error) => error.toString().contains(
            'The Pulumi CLI does not support transforms. Please update the Pulumi CLI.',
          ),
        );
        await expectResourceFailure(resource, failureMatcher);
        expect(monitor.requestedFeatures, equals(['transforms']));
        expect(monitor.capturedRegisterResourceRequest, isNull);
      },
    );
  });
}
