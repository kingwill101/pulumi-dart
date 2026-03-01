import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_args.dart';
import 'get_app_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Get the metadata of an IoT Central application.
///
/// Uses Azure REST API version 2021-11-01-preview.
///
/// Other available API versions: 2021-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotcentral [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotcentral_get_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResult> getApp(
  GetAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotcentral:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResult.fromMap(result);
}

/// Get the metadata of a private endpoint connection for the IoT Central Application.
///
/// Uses Azure REST API version 2021-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotcentral_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotcentral:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}
