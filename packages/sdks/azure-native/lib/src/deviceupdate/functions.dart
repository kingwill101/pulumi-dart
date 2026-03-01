import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_proxy_args.dart';
import 'get_private_endpoint_connection_proxy_result.dart';
import 'get_private_endpoint_connection_result.dart';

/// Returns account details for the given account name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceupdate_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceupdate:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Returns instance details for the given instance and account name.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceupdate_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceupdate:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Get the specified private endpoint connection associated with the device update account.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceupdate_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceupdate:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// (INTERNAL - DO NOT USE) Get the specified private endpoint connection proxy associated with the device update account.
///
/// Uses Azure REST API version 2023-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceupdate_get_private_endpoint_connection_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionProxyResult> getPrivateEndpointConnectionProxy(
  GetPrivateEndpointConnectionProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceupdate:getPrivateEndpointConnectionProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionProxyResult.fromMap(result);
}
