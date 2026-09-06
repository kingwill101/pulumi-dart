import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deid_service_args.dart';
import 'get_deid_service_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Get a DeidService
///
/// Uses Azure REST API version 2024-09-20.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthdataaiservices_get_deid_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeidServiceResult> getDeidService(
  GetDeidServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthdataaiservices:getDeidService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeidServiceResult.fromMap(result);
}

pulumi.Output<GetDeidServiceResult> getDeidServiceOutput(
  GetDeidServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthdataaiservices:getDeidService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeidServiceResult.fromMap);
}

/// Get a specific private connection
///
/// Uses Azure REST API version 2024-09-20.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthdataaiservices_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthdataaiservices:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:healthdataaiservices:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}
