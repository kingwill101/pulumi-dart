import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attestation_provider_args.dart';
import 'get_attestation_provider_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';

/// Get the status of Attestation Provider.
///
/// Uses Azure REST API version 2021-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_attestation_get_attestation_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttestationProviderResult> getAttestationProvider(
  GetAttestationProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:attestation:getAttestationProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestationProviderResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the attestation provider.
///
/// Uses Azure REST API version 2021-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_attestation_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:attestation:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}
