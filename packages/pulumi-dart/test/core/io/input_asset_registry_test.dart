import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/resource/registry.dart';
import 'package:pulumi/src/settings.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pb.dart' as callbackpb;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

class _RegistryMonitorService extends ResourceMonitorServiceBase {
  pulumirpc.RegisterResourceRequest? registerResourceRequest;

  @override
  Future<pulumirpc.SupportsFeatureResponse> supportsFeature(
    ServiceCall call,
    pulumirpc.SupportsFeatureRequest request,
  ) async {
    return pulumirpc.SupportsFeatureResponse()..hasSupport = true;
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    pulumirpc.ResourceInvokeRequest request,
  ) async {
    throw GrpcError.unimplemented('invoke not used');
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    pulumirpc.ResourceCallRequest request,
  ) async {
    throw GrpcError.unimplemented('call not used');
  }

  @override
  Future<pulumirpc.ReadResourceResponse> readResource(
    ServiceCall call,
    pulumirpc.ReadResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('readResource not used');
  }

  @override
  Future<pulumirpc.RegisterResourceResponse> registerResource(
    ServiceCall call,
    pulumirpc.RegisterResourceRequest request,
  ) async {
    registerResourceRequest = request;
    return pulumirpc.RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::pkg:index:Type::name'
      ..id = 'resource-id'
      ..object = (Struct()
        ..fields['answer'] = (Value()..numberValue = 42)
        ..fields['ok'] = (Value()..boolValue = true));
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
    callbackpb.Callback request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerStackInvokeTransform(
    ServiceCall call,
    callbackpb.Callback request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerResourceHook(
    ServiceCall call,
    pulumirpc.RegisterResourceHookRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerErrorHook(
    ServiceCall call,
    pulumirpc.RegisterErrorHookRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<pulumirpc.RegisterPackageResponse> registerPackage(
    ServiceCall call,
    pulumirpc.RegisterPackageRequest request,
  ) async {
    return pulumirpc.RegisterPackageResponse();
  }

  @override
  Future<Empty> signalAndWaitForShutdown(
    ServiceCall call,
    Empty request,
  ) async {
    return Empty();
  }
}

Input<String> _acceptInputString(Input<String> value) => value;

class _InputIdSourceResource extends CustomResource {
  _InputIdSourceResource(String name)
      : super('test:index:InputIdSource', name, const {}, CustomResourceOptions());
}

class _InputIdConsumerResource extends CustomResource {
  final Input<String> targetId;

  _InputIdConsumerResource(String name, this.targetId)
      : super(
          'test:index:InputIdConsumer',
          name,
          {'targetId': targetId},
          CustomResourceOptions(),
        );
}

void main() {
  group('input asset registry', () {
    tearDown(() {
      Runtime().disconnectSync();
      Runtime().resetOptions(
        project: 'project',
        stack: 'stack',
        organization: 'organization',
        monitorAddr: null,
        engineAddr: null,
      );
    });

    test('asset and archive factory constructors map to concrete classes', () {
      final fileAsset = Asset.fromPath('/tmp/file.txt');
      final stringAsset = Asset.fromString('hello');
      final base64Asset = Asset.fromBase64('aGVsbG8=');
      final fileArchive = Archive.fromPath('/tmp/archive.zip');
      final assetArchive = Archive.fromAssets({'file': fileAsset});

      expect(fileAsset, isA<FileAsset>());
      expect((fileAsset as FileAsset).path, '/tmp/file.txt');
      expect(stringAsset, isA<StringAsset>());
      expect((stringAsset as StringAsset).content, 'hello');
      expect(base64Asset, isA<Base64Asset>());
      expect((base64Asset as Base64Asset).content, 'aGVsbG8=');
      expect(fileArchive, isA<FileArchive>());
      expect((fileArchive as FileArchive).path, '/tmp/archive.zip');
      expect(assetArchive, isA<AssetArchive>());
      expect((assetArchive as AssetArchive).assets.keys, contains('file'));
      expect(RemoteAsset('https://asset.example').url, 'https://asset.example');
      expect(
        RemoteArchive('https://archive.example').url,
        'https://archive.example',
      );
    });

    test(
      'Input helper methods preserve expected conversion semantics',
      () async {
        final fromValue = Input.fromValue(123);
        final fromInput = Input.asInput<int>(fromValue);
        final fromRaw = Input.asInput<int>(456);
        final fromOutput = Input.asInput<int>(Output.create(654));
        final fromDynamicInput = Input.asInput<int>(Input.fromValue(987));
        final optionalNull = Input.asOptionalInput<int>(null);
        final optionalRaw = Input.asOptionalInput<int>(789);
        final optionalOutput = Input.asOptionalInput<int>(Output.create(321));
        final nullableFromOutput = Input.asInput<String?>(
          Output.create<String?>('nullable'),
        );
        final mapped = Input.mapInputValue<int, String>(fromRaw, (v) => 'v:$v');
        final mappedOptional = Input.mapOptionalInputValue<int, String>(
          optionalRaw,
          (v) => 'o:$v',
        );
        final decodedList = Input.decodeList<String>([1, 2], (v) => 'n:$v');
        final decodedMap = Input.decodeMapValues<String>({
          'a': 1,
          'b': 2,
        }, (v) => 'n:$v');
        final encodedList = Input.encodeList<int, String>([
          3,
          4,
        ], (v) => 'e:$v');
        final encodedMap = Input.encodeMapValues<int, String>({
          'x': 5,
          'y': 6,
        }, (v) => 'e:$v');
        final mappedInputs = Input.mapToInputs({
          'already': fromValue,
          'raw': 'text',
        });
        final extensionInput = 10.input();
        final extensionOutput = 'ext'.output();
        final outputAsInput = extensionOutput.input();
        final outputIdentity = extensionOutput.output();
        final staticInput = Input.input<int>(111);
        final staticOutput = Input.output<String>('static');
        final staticOutputFromOutput = Input.output<int>(Output.create(222));

        expect(identical(fromInput, fromValue), isTrue);
        expect(await fromRaw.toOutput().getValue(), 456);
        expect(await fromOutput.toOutput().getValue(), 654);
        expect(await fromDynamicInput.toOutput().getValue(), 987);
        expect(optionalNull, isNull);
        expect(await optionalRaw!.toOutput().getValue(), 789);
        expect(await optionalOutput!.toOutput().getValue(), 321);
        expect(await nullableFromOutput.toOutput().getValue(), 'nullable');
        expect(await mapped.toOutput().getValue(), 'v:456');
        expect(await mappedOptional!.toOutput().getValue(), 'o:789');
        expect(decodedList, ['n:1', 'n:2']);
        expect(decodedMap, {'a': 'n:1', 'b': 'n:2'});
        expect(encodedList, ['e:3', 'e:4']);
        expect(encodedMap, {'x': 'e:5', 'y': 'e:6'});
        expect(mappedInputs['already'], same(fromValue));
        expect(await mappedInputs['raw']!.toOutput().getValue(), 'text');
        expect(await extensionInput.toOutput().getValue(), 10);
        expect(await extensionOutput.getValue(), 'ext');
        expect(await outputAsInput.toOutput().getValue(), 'ext');
        expect(identical(outputIdentity, extensionOutput), isTrue);
        expect(await staticInput.toOutput().getValue(), 111);
        expect(await staticOutput.getValue(), 'static');
        expect(await staticOutputFromOutput.getValue(), 222);
      },
    );

    test('CustomResource.id can be used wherever Input<String> is expected', () async {
      final source = _InputIdSourceResource('source');
      source.resolveId('source-id', isKnown: true);

      final Input<String> idAsInput = source.id;
      final Input<String> idViaStaticInput = Input.input<String>(source.id);
      final Input<String> idViaFromOutput = Input.fromOutput(source.id);
      final Input<String>? idViaOptionalInput =
          Input.asOptionalInput<String>(source.id);

      final mapped = Input.mapInputValue<String, String>(idAsInput, (value) {
        return 'mapped-$value';
      });
      final consumer = _InputIdConsumerResource('consumer', idAsInput);

      expect(await idAsInput.toOutput().getValue(), 'source-id');
      expect(await idViaStaticInput.toOutput().getValue(), 'source-id');
      expect(await idViaFromOutput.toOutput().getValue(), 'source-id');
      expect(await idViaOptionalInput!.toOutput().getValue(), 'source-id');
      expect(await mapped.toOutput().getValue(), 'mapped-source-id');
      expect(identical(consumer.targetId, idAsInput), isTrue);
      expect(source.id is Input<String>, isTrue);
      expect(Output.create('inline') is Input<String>, isTrue);
      expect(_acceptInputString(source.id), same(source.id));
    });

    test(
      'ResourceRegistry.constructResource uses registered factory and fallback',
      () async {
        final registry = ResourceRegistry();
        var capturedName = '';
        Map<String, Input<dynamic>>? capturedProps;

        registry.registerResourceFactory('pkg:index:Type', (
          name,
          props,
          options,
        ) {
          capturedName = name;
          capturedProps = props;
          return DependencyResource('urn:factory::$name');
        });

        final constructed = registry.constructResource(
          'pkg:index:Type',
          'name',
          'urn:ignored',
          {'prop': Input.fromValue('value')},
          ResourceOptions(),
        );
        final fallback = registry.constructResource(
          'pkg:index:Other',
          'name',
          'urn:fallback',
          {},
          ResourceOptions(),
        );

        expect(constructed, isA<DependencyResource>());
        expect(
          await (constructed as DependencyResource).urn.getValue(),
          'urn:factory::name',
        );
        expect(capturedName, 'name');
        expect(capturedProps!.keys, contains('prop'));
        expect(fallback, isA<DependencyResource>());
        expect(
          await (fallback as DependencyResource).urn.getValue(),
          'urn:fallback',
        );
      },
    );

    test(
      'ResourceRegistry.registerResourceAsync throws when monitor is unavailable',
      () async {
        Runtime().resetOptions(
          project: 'project',
          stack: 'stack',
          organization: 'organization',
          monitorAddr: null,
          engineAddr: null,
        );

        final registry = ResourceRegistry();
        await expectLater(
          registry.registerResourceAsync(
            'pkg:index:Type',
            'name',
            {},
            ResourceOptions(),
          ),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'ResourceRegistry.registerResourceAsync uses monitor and deserializes outputs',
      () async {
        final service = _RegistryMonitorService();
        final server = Server.create(services: [service]);
        await server.serve(address: InternetAddress.loopbackIPv4, port: 0);

        Runtime().resetOptions(
          project: 'project',
          stack: 'stack',
          organization: 'organization',
          monitorAddr: '127.0.0.1:${server.port!}',
          engineAddr: null,
        );

        try {
          final result = await ResourceRegistry().registerResourceAsync(
            'pkg:index:Type',
            'name',
            {'value': Input.fromOutput(Output.create('hello'))},
            ResourceOptions(),
          );

          expect(result.urn, 'urn:pulumi:stack::project::pkg:index:Type::name');
          expect(result.id, 'resource-id');
          expect(result.outputs['answer'], 42);
          expect(result.outputs['ok'], isTrue);
          expect(service.registerResourceRequest, isNotNull);
          expect(service.registerResourceRequest!.type, 'pkg:index:Type');
          expect(service.registerResourceRequest!.name, 'name');
        } finally {
          Runtime().disconnectSync();
          await server.shutdown();
        }
      },
    );
  });
}
