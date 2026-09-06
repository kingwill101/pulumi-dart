import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fluid_relay_private_endpoint_connection_args.dart';
import 'get_fluid_relay_private_endpoint_connection_result.dart';
import 'get_fluid_relay_server_args.dart';
import 'get_fluid_relay_server_result.dart';
import 'list_fluid_relay_server_keys_args.dart';
import 'list_fluid_relay_server_keys_result.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2025-06-20-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_fluidrelay_get_fluid_relay_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFluidRelayPrivateEndpointConnectionResult> getFluidRelayPrivateEndpointConnection(
  GetFluidRelayPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fluidrelay:getFluidRelayPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFluidRelayPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetFluidRelayPrivateEndpointConnectionResult> getFluidRelayPrivateEndpointConnectionOutput(
  GetFluidRelayPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:fluidrelay:getFluidRelayPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFluidRelayPrivateEndpointConnectionResult.fromMap);
}

/// A FluidRelay Server.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2025-06-20-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fluidrelay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fluidrelay_get_fluid_relay_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFluidRelayServerResult> getFluidRelayServer(
  GetFluidRelayServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fluidrelay:getFluidRelayServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFluidRelayServerResult.fromMap(result);
}

pulumi.Output<GetFluidRelayServerResult> getFluidRelayServerOutput(
  GetFluidRelayServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:fluidrelay:getFluidRelayServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFluidRelayServerResult.fromMap);
}

/// The set of available keys for this server.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2025-06-20-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fluidrelay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fluidrelay_list_fluid_relay_server_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFluidRelayServerKeysResult> listFluidRelayServerKeys(
  ListFluidRelayServerKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fluidrelay:listFluidRelayServerKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFluidRelayServerKeysResult.fromMap(result);
}

pulumi.Output<ListFluidRelayServerKeysResult> listFluidRelayServerKeysOutput(
  ListFluidRelayServerKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:fluidrelay:listFluidRelayServerKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListFluidRelayServerKeysResult.fromMap);
}
