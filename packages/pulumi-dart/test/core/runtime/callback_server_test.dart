import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/alias.dart';
import 'package:pulumi/src/callback_server.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/resource/component_resource.dart';
import 'package:pulumi/src/resource/custom_resource.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:pulumi/src/resource/resource_options.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pbgrpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/alias.pb.dart' as aliaspb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/resource/resource_transformation.dart';
import 'package:pulumi/src/resource/resource_hooks.dart';
import 'package:pulumi/src/invoke.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

class _CancelledErrorLike {
  final String message;

  _CancelledErrorLike(this.message);

  @override
  String toString() => 'CancelledError("$message")';
}

class _CapturingResourceMonitorService extends ResourceMonitorServiceBase {
  final List<pulumirpc.RegisterResourceHookRequest> resourceHookRequests = [];
  final List<pulumirpc.RegisterErrorHookRequest> errorHookRequests = [];
  final List<Callback> stackTransformRequests = [];
  final List<Callback> stackInvokeTransformRequests = [];
  Duration stackTransformDelay = Duration.zero;
  Duration stackInvokeTransformDelay = Duration.zero;
  bool failStackTransformRegistration = false;
  bool failStackInvokeTransformRegistration = false;

  @override
  Future<pulumirpc.DeploymentInfo> getDeploymentInfo(
    ServiceCall call,
    Empty request,
  ) async => pulumirpc.DeploymentInfo();

  @override
  Future<pulumirpc.SupportsFeatureResponse> supportsFeature(
    ServiceCall call,
    pulumirpc.SupportsFeatureRequest request,
  ) async {
    return pulumirpc.SupportsFeatureResponse()..hasSupport = true;
  }

  @override
  Future<pulumirpc.ResourceInvokeResponse> invoke(
    ServiceCall call,
    pulumirpc.ResourceInvokeRequest request,
  ) async {
    throw GrpcError.unimplemented('invoke not used in this test suite');
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    pulumirpc.ResourceCallRequest request,
  ) async {
    throw GrpcError.unimplemented('call not used in this test suite');
  }

  @override
  Future<pulumirpc.ReadResourceResponse> readResource(
    ServiceCall call,
    pulumirpc.ReadResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('readResource not used in this test suite');
  }

  @override
  Future<pulumirpc.RegisterResourceResponse> registerResource(
    ServiceCall call,
    pulumirpc.RegisterResourceRequest request,
  ) async {
    throw GrpcError.unimplemented(
      'registerResource not used in this test suite',
    );
  }

  @override
  Future<Empty> registerResourceOutputs(
    ServiceCall call,
    pulumirpc.RegisterResourceOutputsRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerStackTransform(
    ServiceCall call,
    Callback request,
  ) async {
    if (stackTransformDelay > Duration.zero) {
      await Future.delayed(stackTransformDelay);
    }
    if (failStackTransformRegistration) {
      throw GrpcError.unknown('stack-transform-registration-failed');
    }
    stackTransformRequests.add(request);
    return Empty();
  }

  @override
  Future<Empty> registerStackInvokeTransform(
    ServiceCall call,
    Callback request,
  ) async {
    if (stackInvokeTransformDelay > Duration.zero) {
      await Future.delayed(stackInvokeTransformDelay);
    }
    if (failStackInvokeTransformRegistration) {
      throw GrpcError.unknown('stack-invoke-transform-registration-failed');
    }
    stackInvokeTransformRequests.add(request);
    return Empty();
  }

  @override
  Future<Empty> registerResourceHook(
    ServiceCall call,
    pulumirpc.RegisterResourceHookRequest request,
  ) async {
    resourceHookRequests.add(request);
    return Empty();
  }

  @override
  Future<Empty> registerErrorHook(
    ServiceCall call,
    pulumirpc.RegisterErrorHookRequest request,
  ) async {
    errorHookRequests.add(request);
    return Empty();
  }

  @override
  Future<pulumirpc.RegisterPackageResponse> registerPackage(
    ServiceCall call,
    pulumirpc.RegisterPackageRequest request,
  ) async {
    return pulumirpc.RegisterPackageResponse()..ref = 'pkg-ref';
  }

  @override
  Future<Empty> signalAndWaitForShutdown(
    ServiceCall call,
    Empty request,
  ) async {
    return Empty();
  }
}

ClientChannel _channelForTarget(String target) {
  final parts = target.split(':');
  return ClientChannel(
    parts[0],
    port: int.parse(parts[1]),
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
}

void main() {
  group('callback server', () {
    late _CapturingResourceMonitorService monitorService;
    late Server monitorServer;
    late ClientChannel monitorChannel;
    late ResourceMonitorClient monitorClient;
    late CallbackServer callbackServer;

    setUp(() async {
      monitorService = _CapturingResourceMonitorService();
      monitorServer = Server.create(services: [monitorService]);
      await monitorServer.serve(address: InternetAddress.loopbackIPv4, port: 0);

      monitorChannel = ClientChannel(
        '127.0.0.1',
        port: monitorServer.port!,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      monitorClient = ResourceMonitorClient(monitorChannel);
      callbackServer = CallbackServer(monitorClient);
    });

    tearDown(() async {
      callbackServer.shutdown();
      await monitorChannel.shutdown();
      await monitorServer.shutdown();
    });

    test(
      'registerResourceHook deduplicates by name and forwards onDryRun',
      () async {
        Future<void> noop(ResourceHookArgs args) async {}

        final first = await callbackServer.registerResourceHook(
          ResourceHook('hookA', noop, onDryRun: true),
        );
        final second = await callbackServer.registerResourceHook(
          ResourceHook('hookA', noop, onDryRun: false),
        );

        expect(first, equals('hookA'));
        expect(second, equals('hookA'));
        expect(monitorService.resourceHookRequests, hasLength(1));
        expect(
          monitorService.resourceHookRequests.single.name,
          equals('hookA'),
        );
        expect(monitorService.resourceHookRequests.single.onDryRun, isTrue);
        expect(
          monitorService.resourceHookRequests.single.callback.target,
          isNotEmpty,
        );
        expect(
          monitorService.resourceHookRequests.single.callback.token,
          isNotEmpty,
        );
      },
    );

    test(
      'resource hook callback receives mapped args and success response',
      () async {
        ResourceHookArgs? captured;
        await callbackServer.registerResourceHook(
          ResourceHook('hookMapped', (args) async {
            captured = args;
          }),
        );
        final registration = monitorService.resourceHookRequests.single;

        final request = pulumirpc.ResourceHookRequest()
          ..urn = 'urn:pulumi:stack::project::pkg:index:Res::name'
          ..id = 'res-id'
          ..name = 'name'
          ..type = 'pkg:index:Res'
          ..newInputs = await StructConverter.toStruct({'enabled': true})
          ..oldOutputs = await StructConverter.toStruct({'count': 42});

        final callbackChannel = _channelForTarget(registration.callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeResponse = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = registration.callback.token
            ..request = request.writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final hookResponse = pulumirpc.ResourceHookResponse.fromBuffer(
          invokeResponse.response,
        );
        expect(hookResponse.error, isEmpty);

        expect(captured, isNotNull);
        expect(captured!.urn, equals(request.urn));
        expect(captured!.id, equals(request.id));
        expect(captured!.name, equals(request.name));
        expect(captured!.type, equals(request.type));
        expect(captured!.newInputs, equals({'enabled': true}));
        expect(captured!.oldOutputs, equals({'count': 42}));
        expect(captured!.oldInputs, isNull);
        expect(captured!.newOutputs, isNull);
      },
    );

    test(
      'resource hook callback maps oldInputs and newOutputs when present',
      () async {
        ResourceHookArgs? captured;
        await callbackServer.registerResourceHook(
          ResourceHook('hookMappedFull', (args) async {
            captured = args;
          }),
        );
        final registration = monitorService.resourceHookRequests.single;

        final request = pulumirpc.ResourceHookRequest()
          ..urn = 'urn:pulumi:stack::project::pkg:index:Res::name'
          ..id = 'res-id'
          ..name = 'name'
          ..type = 'pkg:index:Res'
          ..oldInputs = await StructConverter.toStruct({'before': 1})
          ..newOutputs = await StructConverter.toStruct({'after': 2});

        final callbackChannel = _channelForTarget(registration.callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeResponse = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = registration.callback.token
            ..request = request.writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final hookResponse = pulumirpc.ResourceHookResponse.fromBuffer(
          invokeResponse.response,
        );
        expect(hookResponse.error, isEmpty);
        expect(captured, isNotNull);
        expect(captured!.oldInputs, equals({'before': 1}));
        expect(captured!.newOutputs, equals({'after': 2}));
      },
    );

    test(
      'resource hook callback returns error text when handler throws',
      () async {
        await callbackServer.registerResourceHook(
          ResourceHook('hookError', (args) {
            throw StateError('boom');
          }),
        );
        final registration = monitorService.resourceHookRequests.single;

        final callbackChannel = _channelForTarget(registration.callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeResponse = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = registration.callback.token
            ..request = pulumirpc.ResourceHookRequest(
              name: 'res',
              type: 'pkg:index:Res',
            ).writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final hookResponse = pulumirpc.ResourceHookResponse.fromBuffer(
          invokeResponse.response,
        );
        expect(hookResponse.error, contains('boom'));
      },
    );

    test('registerErrorHook deduplicates by name', () async {
      Future<bool> alwaysRetry(ErrorHookArgs args) async => true;

      final first = await callbackServer.registerErrorHook(
        ErrorHook('hookErrA', alwaysRetry),
      );
      final second = await callbackServer.registerErrorHook(
        ErrorHook('hookErrA', alwaysRetry),
      );

      expect(first, equals('hookErrA'));
      expect(second, equals('hookErrA'));
      expect(monitorService.errorHookRequests, hasLength(1));
      expect(monitorService.errorHookRequests.single.name, equals('hookErrA'));
      expect(
        monitorService.errorHookRequests.single.callback.target,
        isNotEmpty,
      );
      expect(
        monitorService.errorHookRequests.single.callback.token,
        isNotEmpty,
      );
    });

    test(
      'resource transform maps custom options and serializes transformed options',
      () async {
        ResourceTransformArgs? captured;
        final requestProviderUrn =
            'urn:pulumi:dev::proj::pulumi:providers:aws::default_1_0_0';
        final requestRandomProviderUrn =
            'urn:pulumi:dev::proj::pulumi:providers:random::default_1_0_0';
        final resultProviderUrn =
            'urn:pulumi:dev::proj::pulumi:providers:aws::result_1_0_0';
        final resultRandomProviderUrn =
            'urn:pulumi:dev::proj::pulumi:providers:random::result_1_0_0';
        final requestParentUrn = 'urn:pulumi:dev::proj::pkg:index:Parent::p1';
        final requestDeletedWithUrn =
            'urn:pulumi:dev::proj::pkg:index:DeletedWith::dw1';
        final requestDependsOnUrn =
            'urn:pulumi:dev::proj::pkg:index:Dependency::dep1';

        final callback = await callbackServer.registerTransform((
          args, [
          cancellationToken,
        ]) async {
          captured = args;
          return ResourceTransformResult(
            {'next': 'value', 'count': 7},
            CustomResourceOptions(
              parent: DependencyResource(
                'urn:pulumi:dev::proj::pkg:index:Parent::result-parent',
              ),
              dependsOn: [
                DependencyResource(
                  'urn:pulumi:dev::proj::pkg:index:Dependency::result-dep',
                ),
              ],
              protect: true,
              provider: ProviderResource.reference(
                'aws',
                resultProviderUrn,
                id: 'provider-id',
              ),
              providers: [
                ProviderResource.reference(
                  'random',
                  resultRandomProviderUrn,
                  id: 'random-id',
                ),
              ],
              aliases: [
                Alias(urn: 'urn:pulumi:dev::proj::pkg:index:Res::alias-urn'),
                Alias(
                  name: Input.fromValue('legacy-name'),
                  type: Input.fromValue('pkg:index:LegacyRes'),
                  stack: Input.fromValue('dev'),
                  project: Input.fromValue('proj'),
                  noParent: true,
                ),
              ],
              version: '9.9.9',
              pluginDownloadURL: 'https://example.com/plugin.tgz',
              customTimeouts: const CustomTimeouts(
                create: '1m',
                update: '2m',
                delete: '3m',
                read: '4m',
              ),
              deleteBeforeReplace: true,
              retainOnDelete: true,
              deletedWith: DependencyResource(
                'urn:pulumi:dev::proj::pkg:index:DeletedWith::result-dw',
              ),
              additionalSecretOutputs: ['secretOut'],
              ignoreChanges: ['spec.tags.name'],
              replacementTrigger: {'rotate': true},
            ),
          );
        });

        final requestOptions = TransformResourceOptions()
          ..protect = true
          ..provider = '$requestProviderUrn::request-provider-id'
          ..providers['aws'] = '$requestProviderUrn::request-provider-id'
          ..providers['random'] = '$requestRandomProviderUrn::request-random-id'
          ..dependsOn.add(requestDependsOnUrn)
          ..aliases.add(
            aliaspb.Alias()
              ..urn = 'urn:pulumi:dev::proj::pkg:index:Res::legacy',
          )
          ..aliases.add(
            aliaspb.Alias()
              ..spec = (aliaspb.Alias_Spec()
                ..name = 'legacy-spec'
                ..type = 'pkg:index:LegacySpec'
                ..stack = 'dev'
                ..project = 'proj'
                ..parentUrn =
                    'urn:pulumi:dev::proj::pkg:index:Parent::legacy-parent'),
          )
          ..version = '1.2.3'
          ..pluginDownloadUrl = 'https://example.com/provider.tgz'
          ..customTimeouts = (RegisterResourceRequest_CustomTimeouts()
            ..create_1 = '4m'
            ..update = '5m'
            ..delete = '6m'
            ..read = '7m')
          ..deleteBeforeReplace = true
          ..retainOnDelete = true
          ..deletedWith = requestDeletedWithUrn
          ..additionalSecretOutputs.add('initialSecret')
          ..ignoreChanges.add('metadata.labels')
          ..replacementTrigger = await StructConverter.toValue({'seed': 42});

        final request = TransformRequest()
          ..name = 'res'
          ..type = 'pkg:index:Res'
          ..custom = true
          ..parent = requestParentUrn
          ..properties = await StructConverter.toStruct({'enabled': true})
          ..options = requestOptions;

        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeResponse = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = callback.token
            ..request = request.writeToBuffer(),
        );
        await callbackChannel.shutdown();

        expect(captured, isNotNull);
        expect(captured!.name, equals('res'));
        expect(captured!.type, equals('pkg:index:Res'));
        expect(captured!.custom, isTrue);
        expect(captured!.args, equals({'enabled': true}));
        expect(captured!.options, isA<CustomResourceOptions>());

        final capturedOptions = captured!.options as CustomResourceOptions;
        expect(
          await capturedOptions.parent!.urn.getValue(),
          equals(requestParentUrn),
        );
        expect(capturedOptions.dependsOn, hasLength(1));
        expect(
          await capturedOptions.dependsOn!.single.urn.getValue(),
          equals(requestDependsOnUrn),
        );
        expect(capturedOptions.protect, isTrue);
        expect(capturedOptions.provider, isNotNull);
        expect(capturedOptions.provider!.package, equals('aws'));
        expect(
          await capturedOptions.provider!.urn.getValue(),
          equals(requestProviderUrn),
        );
        expect(
          await capturedOptions.provider!.id.getValue(),
          equals('request-provider-id'),
        );
        final capturedProvidersByPackage = {
          for (final provider in capturedOptions.providers)
            provider.package: provider,
        };
        expect(capturedProvidersByPackage.keys, containsAll(['aws', 'random']));
        expect(
          await capturedProvidersByPackage['random']!.urn.getValue(),
          equals(requestRandomProviderUrn),
        );
        expect(capturedOptions.aliases, hasLength(2));
        expect(capturedOptions.aliases!.first.urn, isNotNull);
        expect(capturedOptions.aliases![1].parentUrn, isNotNull);
        expect(
          await capturedOptions.aliases![1].parentUrn!.toOutput().getValue(),
          equals('urn:pulumi:dev::proj::pkg:index:Parent::legacy-parent'),
        );
        expect(capturedOptions.version, equals('1.2.3'));
        expect(
          capturedOptions.pluginDownloadURL,
          equals('https://example.com/provider.tgz'),
        );
        expect(capturedOptions.customTimeouts, isNotNull);
        expect(capturedOptions.customTimeouts!.create, equals('4m'));
        expect(capturedOptions.customTimeouts!.update, equals('5m'));
        expect(capturedOptions.customTimeouts!.delete, equals('6m'));
        expect(capturedOptions.customTimeouts!.read, equals('7m'));
        expect(capturedOptions.deleteBeforeReplace, isTrue);
        expect(capturedOptions.retainOnDelete, isTrue);
        expect(
          await capturedOptions.deletedWith!.urn.getValue(),
          equals(requestDeletedWithUrn),
        );
        expect(
          capturedOptions.additionalSecretOutputs,
          equals(['initialSecret']),
        );
        expect(capturedOptions.ignoreChanges, equals(['metadata.labels']));
        expect(capturedOptions.replacementTrigger, equals({'seed': 42}));

        final response = TransformResponse.fromBuffer(invokeResponse.response);
        expect(
          StructConverter.fromStruct(response.properties),
          equals({'next': 'value', 'count': 7}),
        );
        expect(response.options.protect, isTrue);
        expect(
          response.options.provider,
          equals('$resultProviderUrn::provider-id'),
        );
        expect(
          response.options.providers['random'],
          equals('$resultRandomProviderUrn::random-id'),
        );
        expect(response.options.version, equals('9.9.9'));
        expect(
          response.options.pluginDownloadUrl,
          equals('https://example.com/plugin.tgz'),
        );
        expect(response.options.customTimeouts.create_1, equals('1m'));
        expect(response.options.customTimeouts.update, equals('2m'));
        expect(response.options.customTimeouts.delete, equals('3m'));
        expect(response.options.customTimeouts.read, equals('4m'));
        expect(response.options.deleteBeforeReplace, isTrue);
        expect(response.options.retainOnDelete, isTrue);
        expect(
          response.options.deletedWith,
          equals('urn:pulumi:dev::proj::pkg:index:DeletedWith::result-dw'),
        );
        expect(response.options.additionalSecretOutputs, equals(['secretOut']));
        expect(response.options.ignoreChanges, equals(['spec.tags.name']));
        expect(response.options.aliases, hasLength(2));
        expect(response.options.aliases.first.hasUrn(), isTrue);
        expect(response.options.aliases[1].hasSpec(), isTrue);
        expect(
          response
              .options
              .replacementTrigger
              .structValue
              .fields['rotate']
              ?.boolValue,
          isTrue,
        );
      },
    );

    test(
      'resource transform null result preserves payload and maps component options',
      () async {
        ResourceTransformArgs? captured;
        final callback = await callbackServer.registerTransform((
          args, [
          cancellationToken,
        ]) async {
          captured = args;
          return null;
        });

        final requestOptions = TransformResourceOptions()
          ..deleteBeforeReplace = true
          ..retainOnDelete = true
          ..additionalSecretOutputs.add('componentSecret')
          ..ignoreChanges.add('component.field')
          ..version = '2.0.0'
          ..pluginDownloadUrl = 'https://example.com/null.tgz';
        final request = TransformRequest()
          ..name = 'res-null'
          ..type = 'pkg:index:Res'
          ..custom = false
          ..parent = 'urn:pulumi:dev::proj::pkg:index:Parent::component-parent'
          ..properties = await StructConverter.toStruct({'original': 'value'})
          ..options = requestOptions;

        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeResponse = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = callback.token
            ..request = request.writeToBuffer(),
        );
        await callbackChannel.shutdown();

        expect(captured, isNotNull);
        expect(captured!.options, isA<ComponentResourceOptions>());
        final options = captured!.options as ComponentResourceOptions;
        expect(
          await options.parent!.urn.getValue(),
          equals('urn:pulumi:dev::proj::pkg:index:Parent::component-parent'),
        );
        expect(options.deleteBeforeReplace, isTrue);
        expect(options.retainOnDelete, isTrue);
        expect(options.additionalSecretOutputs, equals(['componentSecret']));
        expect(options.ignoreChanges, equals(['component.field']));

        final response = TransformResponse.fromBuffer(invokeResponse.response);
        expect(
          StructConverter.fromStruct(response.properties),
          equals({'original': 'value'}),
        );
        expect(response.options.version, equals('2.0.0'));
        expect(
          response.options.pluginDownloadUrl,
          equals('https://example.com/null.tgz'),
        );
      },
    );

    test(
      'invoke transform null result preserves payload and error hook maps fields',
      () async {
        ErrorHookArgs? capturedErrorHookArgs;
        final callback = await callbackServer.registerStackInvokeTransformAsync(
          (args) async {
            return null;
          },
        );
        await callbackServer.registerErrorHook(
          ErrorHook('mapped-error-hook', (args) async {
            capturedErrorHookArgs = args;
            return false;
          }),
        );

        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeRequest = TransformInvokeRequest()
          ..token = 'pkg:index:getThing'
          ..args = await StructConverter.toStruct({'name': 'example'})
          ..options = (TransformInvokeOptions()
            ..version = '3.0.0'
            ..pluginDownloadUrl = 'https://example.com/invoke.tgz');
        final invokeResponseRaw = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = callback.token
            ..request = invokeRequest.writeToBuffer(),
        );
        final invokeResponse = TransformInvokeResponse.fromBuffer(
          invokeResponseRaw.response,
        );
        expect(
          StructConverter.fromStruct(invokeResponse.args),
          equals({'name': 'example'}),
        );
        expect(invokeResponse.options.version, equals('3.0.0'));
        expect(
          invokeResponse.options.pluginDownloadUrl,
          equals('https://example.com/invoke.tgz'),
        );

        final errorRegistration = monitorService.errorHookRequests.last;
        final errorHookResponseRaw = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = errorRegistration.callback.token
            ..request =
                (pulumirpc.ErrorHookRequest()
                      ..urn = 'urn:pulumi:dev::proj::pkg:index:Res::hooked'
                      ..id = 'id-1'
                      ..name = 'hooked'
                      ..type = 'pkg:index:Res'
                      ..failedOperation = 'update'
                      ..errors.addAll(['err-1', 'err-2'])
                      ..newInputs = await StructConverter.toStruct({
                        'new': true,
                      })
                      ..oldInputs = await StructConverter.toStruct({
                        'old': true,
                      })
                      ..oldOutputs = await StructConverter.toStruct({
                        'out': true,
                      }))
                    .writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final errorHookResponse = pulumirpc.ErrorHookResponse.fromBuffer(
          errorHookResponseRaw.response,
        );
        expect(errorHookResponse.retry, isFalse);
        expect(errorHookResponse.error, isEmpty);
        expect(capturedErrorHookArgs, isNotNull);
        expect(capturedErrorHookArgs!.urn, contains('hooked'));
        expect(capturedErrorHookArgs!.id, equals('id-1'));
        expect(capturedErrorHookArgs!.name, equals('hooked'));
        expect(capturedErrorHookArgs!.type, equals('pkg:index:Res'));
        expect(capturedErrorHookArgs!.failedOperation, equals('update'));
        expect(capturedErrorHookArgs!.errors, equals(['err-1', 'err-2']));
        expect(capturedErrorHookArgs!.newInputs, equals({'new': true}));
        expect(capturedErrorHookArgs!.oldInputs, equals({'old': true}));
        expect(capturedErrorHookArgs!.oldOutputs, equals({'out': true}));
      },
    );

    test(
      'invoke transform maps non-null result args and invoke options',
      () async {
        final providerUrn =
            'urn:pulumi:dev::proj::pulumi:providers:aws::result_6_0_0';
        final callback = await callbackServer.registerStackInvokeTransformAsync(
          (args) async {
            return InvokeTransformResult(
              args: {
                'nextName': Input.fromValue('updated'),
                'count': Input.fromValue(2),
              },
              opts: InvokeOptions(
                provider: ProviderResource.reference(
                  'aws',
                  providerUrn,
                  id: 'provider-id',
                ),
                version: '6.0.0',
                pluginDownloadURL: 'https://example.com/result-invoke.tgz',
              ),
            );
          },
        );

        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final request = TransformInvokeRequest()
          ..token = 'pkg:index:getThing'
          ..args = await StructConverter.toStruct({'name': 'example'})
          ..options = (TransformInvokeOptions()
            ..version = '3.0.0'
            ..pluginDownloadUrl = 'https://example.com/input-invoke.tgz');

        final responseRaw = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = callback.token
            ..request = request.writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final response = TransformInvokeResponse.fromBuffer(
          responseRaw.response,
        );
        expect(
          StructConverter.fromStruct(response.args),
          equals({'nextName': 'updated', 'count': 2}),
        );
        expect(response.options.version, equals('6.0.0'));
        expect(
          response.options.pluginDownloadUrl,
          equals('https://example.com/result-invoke.tgz'),
        );
        expect(response.options.provider, equals('$providerUrn::provider-id'));
      },
    );

    test(
      'invoke transform request without args passes empty mapped args',
      () async {
        InvokeTransformArgs? captured;
        final callback = await callbackServer.registerStackInvokeTransformAsync(
          (args) async {
            captured = args;
            return null;
          },
        );

        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final responseRaw = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = callback.token
            ..request =
                (TransformInvokeRequest()..token = 'pkg:index:getNoArgs')
                    .writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final response = TransformInvokeResponse.fromBuffer(
          responseRaw.response,
        );
        expect(captured, isNotNull);
        expect(captured!.args, isEmpty);
        expect(
          StructConverter.fromStruct(response.args),
          equals(<String, dynamic>{}),
        );
      },
    );

    test(
      'callback invoke rejects unknown token and includes fallback message',
      () async {
        final callback = await callbackServer.registerTransform((
          args, [
          cancellationToken,
        ]) async {
          return null;
        });
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = 'missing-token'
              ..request = TransformRequest().writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>().having(
              (error) => error.message ?? '',
              'message',
              contains('callback not found: missing-token'),
            ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'transform callback keeps error text when thrown with empty stack trace',
      () async {
        Future<ResourceTransformResult?> transformWithEmptyStack(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async {
          Error.throwWithStackTrace(
            StateError('empty-stack'),
            StackTrace.empty,
          );
        }

        final callback = await callbackServer.registerTransform(
          transformWithEmptyStack,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request =
                  (TransformRequest()
                        ..name = 'res'
                        ..type = 'pkg:index:Res'
                        ..custom = true)
                      .writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>().having(
              (error) => error.message ?? '',
              'message',
              contains('transform failed: Bad state: empty-stack'),
            ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'resource transform callback failure includes stack context in gRPC error',
      () async {
        Future<ResourceTransformResult?> transformException(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async {
          throw StateError('beep');
        }

        final callback = await callbackServer.registerTransform(
          transformException,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformRequest()
          ..name = 'res'
          ..type = 'pkg:index:Res'
          ..custom = true
          ..properties = await StructConverter.toStruct({'enabled': true});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('beep'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformException'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'resource transform callback failure handles cancellation-like throwables with stack context',
      () async {
        Future<ResourceTransformResult?> transformCancelledError(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async {
          await Future<void>.value();
          throw _CancelledErrorLike('noes');
        }

        final callback = await callbackServer.registerTransform(
          transformCancelledError,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformRequest()
          ..name = 'res'
          ..type = 'pkg:index:Res'
          ..custom = true
          ..properties = await StructConverter.toStruct({'enabled': true});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('CancelledError("noes")'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformCancelledError'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'invoke transform callback failure includes stack context in gRPC error',
      () async {
        Future<InvokeTransformResult?> transformException(
          InvokeTransformArgs args,
        ) async {
          throw StateError('noes');
        }

        final callback = await callbackServer.registerStackInvokeTransformAsync(
          transformException,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformInvokeRequest()
          ..token = 'pkg:index:getThing'
          ..args = await StructConverter.toStruct({'name': 'example'});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('noes'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformException'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'invoke transform callback failure handles cancellation-like throwables with stack context',
      () async {
        Future<InvokeTransformResult?> transformCancelledError(
          InvokeTransformArgs args,
        ) async {
          await Future<void>.value();
          throw _CancelledErrorLike('noes');
        }

        final callback = await callbackServer.registerStackInvokeTransformAsync(
          transformCancelledError,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformInvokeRequest()
          ..token = 'pkg:index:getThing'
          ..args = await StructConverter.toStruct({'name': 'example'});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('CancelledError("noes")'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformCancelledError'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'transform callback failure handles non-Exception throwables with stack context',
      () async {
        Future<ResourceTransformResult?> transformAssertion(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async {
          throw AssertionError('assert-noes');
        }

        final callback = await callbackServer.registerTransform(
          transformAssertion,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformRequest()
          ..name = 'res'
          ..type = 'pkg:index:Res'
          ..custom = true
          ..properties = await StructConverter.toStruct({'enabled': true});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('assert-noes'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformAssertion'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test('error hook callback returns retry and surfaces errors', () async {
      await callbackServer.registerErrorHook(
        ErrorHook('retry', (args) async => true),
      );
      final registration = monitorService.errorHookRequests.single;

      final callbackChannel = _channelForTarget(registration.callback.target);
      final callbacksClient = CallbacksClient(callbackChannel);
      final retryResponseRaw = await callbacksClient.invoke(
        CallbackInvokeRequest()
          ..token = registration.callback.token
          ..request = pulumirpc.ErrorHookRequest(
            name: 'res',
            type: 'pkg:index:Res',
            failedOperation: 'create',
          ).writeToBuffer(),
      );
      final retryResponse = pulumirpc.ErrorHookResponse.fromBuffer(
        retryResponseRaw.response,
      );
      expect(retryResponse.retry, isTrue);
      expect(retryResponse.error, isEmpty);

      await callbackServer.registerErrorHook(
        ErrorHook('fail', (args) {
          throw StateError('retry-failed');
        }),
      );
      final failureRegistration = monitorService.errorHookRequests.last;
      final failureResponseRaw = await callbacksClient.invoke(
        CallbackInvokeRequest()
          ..token = failureRegistration.callback.token
          ..request = pulumirpc.ErrorHookRequest(
            name: 'res',
            type: 'pkg:index:Res',
            failedOperation: 'update',
          ).writeToBuffer(),
      );
      await callbackChannel.shutdown();

      final failureResponse = pulumirpc.ErrorHookResponse.fromBuffer(
        failureResponseRaw.response,
      );
      expect(failureResponse.error, contains('retry-failed'));
    });

    test(
      'awaitStackRegistrations waits for pending stack transform registration',
      () async {
        monitorService.stackTransformDelay = const Duration(milliseconds: 120);

        callbackServer.registerStackTransform((
          args, [
          cancellationToken,
        ]) async {
          return null;
        });

        var completed = false;
        final waiter = callbackServer.awaitStackRegistrations().then((_) {
          completed = true;
        });

        await Future.delayed(const Duration(milliseconds: 20));
        expect(completed, isFalse);

        await waiter.timeout(const Duration(seconds: 2));
        expect(monitorService.stackTransformRequests, hasLength(1));
        expect(monitorService.stackTransformRequests.single.token, isNotEmpty);
        expect(monitorService.stackTransformRequests.single.target, isNotEmpty);
      },
    );

    test(
      'awaitStackRegistrations still completes when stack transform registration fails',
      () async {
        monitorService.failStackTransformRegistration = true;

        callbackServer.registerStackTransform((
          args, [
          cancellationToken,
        ]) async {
          return null;
        });

        await callbackServer.awaitStackRegistrations().timeout(
          const Duration(seconds: 2),
        );
      },
    );

    test(
      'awaitStackRegistrations waits for pending stack invoke transform registration',
      () async {
        monitorService.stackInvokeTransformDelay = const Duration(
          milliseconds: 120,
        );

        callbackServer.registerStackInvokeTransform((args) async {
          return null;
        });

        var completed = false;
        final waiter = callbackServer.awaitStackRegistrations().then((_) {
          completed = true;
        });

        await Future.delayed(const Duration(milliseconds: 20));
        expect(completed, isFalse);

        await waiter.timeout(const Duration(seconds: 2));
        expect(monitorService.stackInvokeTransformRequests, hasLength(1));
        expect(
          monitorService.stackInvokeTransformRequests.single.token,
          isNotEmpty,
        );
        expect(
          monitorService.stackInvokeTransformRequests.single.target,
          isNotEmpty,
        );
      },
    );

    test(
      'awaitStackRegistrations still completes when stack invoke transform registration fails',
      () async {
        monitorService.failStackInvokeTransformRegistration = true;

        callbackServer.registerStackInvokeTransform((args) async {
          return null;
        });

        await callbackServer.awaitStackRegistrations().timeout(
          const Duration(seconds: 2),
        );
      },
    );

    test(
      'awaitStackRegistrations returns immediately when nothing is pending',
      () async {
        await callbackServer.awaitStackRegistrations().timeout(
          const Duration(seconds: 1),
        );
        expect(monitorService.stackTransformRequests, isEmpty);
        expect(monitorService.stackInvokeTransformRequests, isEmpty);
      },
    );
  });
}
