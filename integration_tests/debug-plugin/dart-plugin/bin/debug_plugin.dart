import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as emptypb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as structpb;
import 'package:pulumi/src/pulumirpc/pulumi/plugin.pb.dart' as pluginpb;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pbgrpc.dart';

class DebugProvider extends ResourceProviderServiceBase {
  @override
  Future<providerpb.ProviderHandshakeResponse> handshake(
    ServiceCall call,
    providerpb.ProviderHandshakeRequest request,
  ) async {
    return providerpb.ProviderHandshakeResponse();
  }

  @override
  Future<providerpb.ParameterizeResponse> parameterize(
    ServiceCall call,
    providerpb.ParameterizeRequest request,
  ) async {
    return providerpb.ParameterizeResponse();
  }

  @override
  Future<providerpb.GetSchemaResponse> getSchema(
    ServiceCall call,
    providerpb.GetSchemaRequest request,
  ) async {
    return providerpb.GetSchemaResponse()
      ..schema = '{"name":"debugplugin","version":"0.0.1","resources":{"debugplugin:index:MyDebugResource":{}}}';
  }

  @override
  Future<providerpb.CheckResponse> checkConfig(
    ServiceCall call,
    providerpb.CheckRequest request,
  ) async {
    return providerpb.CheckResponse()
      ..inputs = request.hasNews() ? request.news : structpb.Struct();
  }

  @override
  Future<providerpb.DiffResponse> diffConfig(
    ServiceCall call,
    providerpb.DiffRequest request,
  ) async {
    return providerpb.DiffResponse();
  }

  @override
  Future<providerpb.ConfigureResponse> configure(
    ServiceCall call,
    providerpb.ConfigureRequest request,
  ) async {
    return providerpb.ConfigureResponse()
      ..acceptSecrets = true
      ..supportsPreview = true
      ..acceptResources = true
      ..acceptOutputs = true;
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    providerpb.InvokeRequest request,
  ) async {
    return providerpb.InvokeResponse();
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    providerpb.CallRequest request,
  ) async {
    return providerpb.CallResponse();
  }

  @override
  Future<providerpb.CheckResponse> check(
    ServiceCall call,
    providerpb.CheckRequest request,
  ) async {
    throw GrpcError.unimplemented("The method 'Check' is not implemented");
  }

  @override
  Future<providerpb.DiffResponse> diff(
    ServiceCall call,
    providerpb.DiffRequest request,
  ) async {
    return providerpb.DiffResponse();
  }

  @override
  Future<providerpb.CreateResponse> create(
    ServiceCall call,
    providerpb.CreateRequest request,
  ) async {
    return providerpb.CreateResponse()
      ..id = 'dummyID'
      ..properties = request.hasProperties() ? request.properties : structpb.Struct();
  }

  @override
  Future<providerpb.ReadResponse> read(
    ServiceCall call,
    providerpb.ReadRequest request,
  ) async {
    return providerpb.ReadResponse();
  }

  @override
  Future<providerpb.UpdateResponse> update(
    ServiceCall call,
    providerpb.UpdateRequest request,
  ) async {
    return providerpb.UpdateResponse();
  }

  @override
  Future<emptypb.Empty> delete(
    ServiceCall call,
    providerpb.DeleteRequest request,
  ) async {
    return emptypb.Empty();
  }

  @override
  Future<providerpb.ConstructResponse> construct(
    ServiceCall call,
    providerpb.ConstructRequest request,
  ) async {
    return providerpb.ConstructResponse();
  }

  @override
  Future<emptypb.Empty> cancel(
    ServiceCall call,
    emptypb.Empty request,
  ) async {
    return emptypb.Empty();
  }

  @override
  Future<pluginpb.PluginInfo> getPluginInfo(
    ServiceCall call,
    emptypb.Empty request,
  ) async {
    return pluginpb.PluginInfo()..version = '0.0.1';
  }

  @override
  Future<emptypb.Empty> attach(
    ServiceCall call,
    pluginpb.PluginAttach request,
  ) async {
    return emptypb.Empty();
  }

  @override
  Future<providerpb.GetMappingResponse> getMapping(
    ServiceCall call,
    providerpb.GetMappingRequest request,
  ) async {
    return providerpb.GetMappingResponse();
  }

  @override
  Future<providerpb.GetMappingsResponse> getMappings(
    ServiceCall call,
    providerpb.GetMappingsRequest request,
  ) async {
    return providerpb.GetMappingsResponse();
  }
}

Future<void> main() async {
  final server = Server.create(
    services: [DebugProvider()],
    codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );

  await server.serve(address: InternetAddress.loopbackIPv4, port: 0);
  stdout.write('${server.port}\n');
  await stdout.flush();

  await Completer<void>().future;
}
