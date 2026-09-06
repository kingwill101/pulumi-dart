import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_details_args.dart';
import 'get_server_details_result.dart';
import 'list_server_gateway_status_args.dart';
import 'list_server_gateway_status_result.dart';

/// Gets details about the specified Analysis Services server.
///
/// Uses Azure REST API version 2017-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_analysisservices_get_server_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerDetailsResult> getServerDetails(
  GetServerDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:analysisservices:getServerDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerDetailsResult.fromMap(result);
}

pulumi.Output<GetServerDetailsResult> getServerDetailsOutput(
  GetServerDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:analysisservices:getServerDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerDetailsResult.fromMap);
}

/// Return the gateway status of the specified Analysis Services server instance.
///
/// Uses Azure REST API version 2017-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_analysisservices_list_server_gateway_status_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServerGatewayStatusResult> listServerGatewayStatus(
  ListServerGatewayStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:analysisservices:listServerGatewayStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServerGatewayStatusResult.fromMap(result);
}

pulumi.Output<ListServerGatewayStatusResult> listServerGatewayStatusOutput(
  ListServerGatewayStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:analysisservices:listServerGatewayStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListServerGatewayStatusResult.fromMap);
}
