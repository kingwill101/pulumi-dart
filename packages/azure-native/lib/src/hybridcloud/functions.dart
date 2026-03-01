import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_connection_args.dart';
import 'get_cloud_connection_result.dart';
import 'get_cloud_connector_args.dart';
import 'get_cloud_connector_result.dart';

/// Gets the specified cloud connection in a specified resource group.
///
/// Uses Azure REST API version 2023-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcloud_get_cloud_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudConnectionResult> getCloudConnection(
  GetCloudConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcloud:getCloudConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudConnectionResult.fromMap(result);
}

/// Gets the specified cloud connector in a specified resource group.
///
/// Uses Azure REST API version 2023-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcloud_get_cloud_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudConnectorResult> getCloudConnector(
  GetCloudConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcloud:getCloudConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudConnectorResult.fromMap(result);
}
