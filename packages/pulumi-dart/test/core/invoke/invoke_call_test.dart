import 'package:grpc/grpc.dart';
import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/pulumi.dart' hide RegisterPackageRequest;
import 'package:pulumi/src/deployment/call.dart';
import 'package:pulumi/src/deployment/invoke.dart';
import 'package:pulumi/src/deployment/models.dart' as deployment_models;
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
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../../mocks/mocks.mocks.dart';

class _FakeMonitor implements Monitor {
  ResourceInvokeRequest? capturedInvokeRequest;
  ResourceCallRequest? capturedCallRequest;
  final List<RegisterPackageRequest> capturedRegisterPackageRequests = [];

  Map<String, dynamic> invokePayload = const {};
  Map<String, dynamic> callPayload = const {};
  List<CheckFailure> invokeFailures = const [];
  List<CheckFailure> callFailures = const [];

  String registerPackageRef = 'pkg-ref';
  Object? registerPackageError;

  @override
  ResourceMonitorClient get client =>
      throw StateError('client is not used in this test harness');

  @override
  Future<SupportsFeatureResponse> supportsFeature(
    SupportsFeatureRequest request,
  ) async {
    return SupportsFeatureResponse(true);
  }

  @override
  Future<ResourceInvokeResponse> invoke(ResourceInvokeRequest request) async {
    capturedInvokeRequest = request;
    final response = ResourceInvokeResponse()
      ..return_1 = await StructConverter.toStruct(invokePayload);
    response.failures.addAll(invokeFailures);
    return response;
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    capturedCallRequest = request;
    final response = CallResponse()
      ..return_1 = await StructConverter.toStruct(callPayload);
    response.failures.addAll(callFailures);
    return response;
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
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
    throw GrpcError.unimplemented('readResource not used in this test');
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('registerResource not used in this test');
  }

  @override
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    throw GrpcError.unimplemented(
      'registerResourceOutputs not used in this test',
    );
  }
}

class _InvokeCallHarness with InvokeMixin, CallMixin {
  @override
  final Monitor monitor;

  _InvokeCallHarness(this.monitor);

  @override
  Future<String?> resolvePackageRef(
    deployment_models.RegisterPackageRequest request,
  ) async => (await monitor.registerPackage(request.toProto())).ref;
}

void main() {
  group('invoke/call', () {
    late _FakeMonitor monitor;
    late _InvokeCallHarness harness;

    setUp(() {
      monitor = _FakeMonitor();
      harness = _InvokeCallHarness(monitor);
    });

    test(
      'invoke sets provider/version/pluginDownloadURL and decodes result',
      () async {
        final provider = ProviderResource.reference(
          'test',
          'urn:pulumi:stack::project::pulumi:providers:test::default',
          id: '1',
        );
        monitor.invokePayload = {'ok': 'value'};

        final result = await harness.invoke<Map<String, dynamic>>(
          'test:index:getThing',
          {'name': 'demo'},
          options: deployment_models.InvokeOptions(
            provider: provider,
            version: '1.2.3',
            pluginDownloadURL: 'https://example.com/plugin',
          ),
        );

        expect(result, equals({'ok': 'value'}));
        final request = monitor.capturedInvokeRequest;
        expect(request, isNotNull);
        expect(request!.tok, equals('test:index:getThing'));
        expect(
          request.provider,
          equals(await ProviderResource.register(provider)),
        );
        expect(request.version, equals('1.2.3'));
        expect(request.pluginDownloadURL, equals('https://example.com/plugin'));
        expect(request.acceptResources, isTrue);
      },
    );

    test('invokeSingle returns first mapped value', () async {
      monitor.invokePayload = {'first': 'alpha', 'second': 'beta'};
      final result = await harness.invokeSingle<String>('test:index:get', {});
      expect(result, equals('alpha'));
    });

    test('invoke returns null for Null return type', () async {
      final result = await harness.invoke<Null>('test:index:get', {});
      expect(result, isNull);
    });

    test('invokeOutputData preserves secret metadata from results', () async {
      monitor.invokePayload = {
        'value': Output.createSecret(Output.create('sensitive')),
      };

      final result = await harness.invokeOutputData<Map<String, dynamic>>(
        'test:index:getSecret',
        {},
      );

      expect(result.value, equals({'value': 'sensitive'}));
      expect(result.isKnown, isTrue);
      expect(result.isSecret, isTrue);
    });

    test(
      'invoke defaults provider/version/plugin fields when options are unset',
      () async {
        await harness.invoke<Map<String, dynamic>>('test:index:getThing', {});

        final request = monitor.capturedInvokeRequest;
        expect(request, isNotNull);
        expect(request!.provider, isEmpty);
        expect(request.version, isEmpty);
        expect(request.pluginDownloadURL, isEmpty);
      },
    );

    test('invokeSingle throws when monitor returns empty map', () async {
      monitor.invokePayload = const {};

      await expectLater(
        harness.invokeSingle<String>('test:index:get', {}),
        throwsStateError,
      );
    });

    test('invoke includes packageRef when registerPackage succeeds', () async {
      monitor.registerPackageRef = 'pkg-ref-123';
      await harness.invoke<Map<String, dynamic>>(
        'test:index:getThing',
        {},
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-test',
          version: '1.0.0',
        ),
      );

      final request = monitor.capturedInvokeRequest;
      expect(request, isNotNull);
      expect(request!.packageRef, equals('pkg-ref-123'));
      expect(monitor.capturedRegisterPackageRequests, hasLength(1));
      expect(
        monitor.capturedRegisterPackageRequests.single.name,
        'pulumi-test',
      );
    });

    test('invoke surfaces non-parameterized registerPackage failure', () async {
      monitor.registerPackageError = StateError('register package failed');
      await expectLater(
        harness.invoke<Map<String, dynamic>>(
          'test:index:getThing',
          {},
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-test',
            version: '1.0.0',
          ),
        ),
        throwsStateError,
      );
      expect(monitor.capturedInvokeRequest, isNull);
    });

    test('invoke rethrows parameterized registerPackage failure', () async {
      monitor.registerPackageError = StateError('register package failed');

      await expectLater(
        harness.invoke<Map<String, dynamic>>(
          'test:index:getThing',
          {},
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-test',
            version: '1.0.0',
            parameterization: deployment_models.Parameterization(
              name: 'upstream',
              version: '2.0.0',
              value: [1, 2, 3],
            ),
          ),
        ),
        throwsStateError,
      );

      expect(monitor.capturedInvokeRequest, isNull);
    });

    test('invoke surfaces failures from monitor response', () async {
      monitor.invokeFailures = [
        CheckFailure()
          ..reason = 'boom'
          ..property = 'input',
      ];

      await expectLater(
        harness.invoke<Map<String, dynamic>>('test:index:getThing', {}),
        throwsA(isA<Exception>()),
      );
    });

    test(
      'call uses options provider over self provider and includes __self__',
      () async {
        final optionsProvider = ProviderResource.reference(
          'test',
          'urn:pulumi:stack::project::pulumi:providers:test::from-options',
          id: '1',
        );
        final selfProvider = ProviderResource.reference(
          'test',
          'urn:pulumi:stack::project::pulumi:providers:test::from-self',
          id: '2',
        );

        final self = MockResource();
        when(
          self.getProvider('test:index:Resource/method'),
        ).thenReturn(selfProvider);
        when(self.urn).thenReturn(
          Output.create('urn:pulumi:stack::project::test:index:Resource::res'),
        );

        monitor.callPayload = {'ok': 'value'};
        final result = await harness.callWithResult<Map<String, dynamic>>(
          'test:index:Resource/method',
          {'arg': 'value'},
          self: self,
          options: deployment_models.CallOptions(
            provider: optionsProvider,
            version: '9.9.9',
            pluginDownloadURL: 'https://example.com/call-plugin',
          ),
        );

        expect(result, equals({'ok': 'value'}));
        final request = monitor.capturedCallRequest;
        expect(request, isNotNull);
        expect(
          request!.provider,
          equals(await ProviderResource.register(optionsProvider)),
        );
        expect(request.version, equals('9.9.9'));
        expect(
          request.pluginDownloadURL,
          equals('https://example.com/call-plugin'),
        );

        final args = StructConverter.fromStruct(request.args);
        expect(args, contains('arg'));
        expect(args, contains('__self__'));
      },
    );

    test('call uses self provider when options provider is unset', () async {
      final selfProvider = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::from-self',
        id: '2',
      );

      final self = MockResource();
      when(
        self.getProvider('test:index:Resource/method'),
      ).thenReturn(selfProvider);
      when(self.urn).thenReturn(
        Output.create('urn:pulumi:stack::project::test:index:Resource::res'),
      );

      await harness.callWithResult<Map<String, dynamic>>(
        'test:index:Resource/method',
        {'arg': 'value'},
        self: self,
      );

      final request = monitor.capturedCallRequest;
      expect(request, isNotNull);
      expect(
        request!.provider,
        equals(await ProviderResource.register(selfProvider)),
      );
    });

    test('call includes packageRef when registerPackage succeeds', () async {
      monitor.registerPackageRef = 'pkg-ref-xyz';
      await harness.callWithResult<Map<String, dynamic>>(
        'test:index:Resource/method',
        {},
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-test',
          version: '1.0.0',
        ),
      );

      final request = monitor.capturedCallRequest;
      expect(request, isNotNull);
      expect(request!.packageRef, equals('pkg-ref-xyz'));
    });

    test('call returns null for Null return type', () async {
      final result = await harness.callWithResult<Null>(
        'test:index:Resource/method',
        {},
      );
      expect(result, isNull);
    });

    test(
      'call defaults provider/version/plugin fields when self and options are unset',
      () async {
        await harness.callWithResult<Map<String, dynamic>>(
          'test:index:Resource/method',
          {'arg': 'value'},
        );

        final request = monitor.capturedCallRequest;
        expect(request, isNotNull);
        expect(request!.provider, isEmpty);
        expect(request.version, isEmpty);
        expect(request.pluginDownloadURL, isEmpty);
      },
    );

    test(
      'call delegates to callWithResult for void/side-effect-only usage',
      () async {
        await harness.call('test:index:Resource/method', {'arg': 'value'});

        final request = monitor.capturedCallRequest;
        expect(request, isNotNull);
        expect(request!.tok, equals('test:index:Resource/method'));
        expect(
          StructConverter.fromStruct(request.args),
          containsPair('arg', 'value'),
        );
      },
    );

    test('call surfaces registerPackage failure', () async {
      monitor.registerPackageError = StateError('register package failed');

      await expectLater(
        harness.callWithResult<Map<String, dynamic>>(
          'test:index:Resource/method',
          {},
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-test',
            version: '1.0.0',
          ),
        ),
        throwsStateError,
      );

      expect(monitor.capturedCallRequest, isNull);
    });

    test('call surfaces failures from monitor response', () async {
      monitor.callFailures = [
        CheckFailure()
          ..reason = 'boom'
          ..property = 'input',
      ];

      await expectLater(
        harness.callWithResult<Map<String, dynamic>>(
          'test:index:Resource/method',
          {},
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
