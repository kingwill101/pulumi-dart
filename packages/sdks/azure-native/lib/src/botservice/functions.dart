import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_args.dart';
import 'get_bot_connection_args.dart';
import 'get_bot_connection_result.dart';
import 'get_bot_result.dart';
import 'get_channel_args.dart';
import 'get_channel_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'list_bot_connection_service_providers_result.dart';
import 'list_bot_connection_with_secrets_args.dart';
import 'list_bot_connection_with_secrets_result.dart';
import 'list_channel_with_keys_args.dart';
import 'list_channel_with_keys_result.dart';
import 'list_qn_amaker_endpoint_key_args.dart';
import 'list_qn_amaker_endpoint_key_result.dart';

/// Returns a BotService specified by the parameters.
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_botservice_get_bot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBotResult> getBot(
  GetBotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:getBot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotResult.fromMap(result);
}

pulumi.Output<GetBotResult> getBotOutput(
  GetBotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:botservice:getBot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBotResult.fromMap);
}

/// Get a Connection Setting registration for a Bot Service
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_botservice_get_bot_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBotConnectionResult> getBotConnection(
  GetBotConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:getBotConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotConnectionResult.fromMap(result);
}

pulumi.Output<GetBotConnectionResult> getBotConnectionOutput(
  GetBotConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:botservice:getBotConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBotConnectionResult.fromMap);
}

/// Returns a BotService Channel registration specified by the parameters.
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_botservice_get_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelResult> getChannel(
  GetChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:getChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelResult.fromMap(result);
}

pulumi.Output<GetChannelResult> getChannelOutput(
  GetChannelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:botservice:getChannel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the Bot.
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_botservice_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:getPrivateEndpointConnection',
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
    'azure-native:botservice:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Lists the available Service Providers for creating Connection Settings
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<ListBotConnectionServiceProvidersResult> listBotConnectionServiceProviders(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:listBotConnectionServiceProviders',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBotConnectionServiceProvidersResult.fromMap(result);
}

pulumi.Output<ListBotConnectionServiceProvidersResult> listBotConnectionServiceProvidersOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:botservice:listBotConnectionServiceProviders',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(ListBotConnectionServiceProvidersResult.fromMap);
}

/// Get a Connection Setting registration for a Bot Service
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_botservice_list_bot_connection_with_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBotConnectionWithSecretsResult> listBotConnectionWithSecrets(
  ListBotConnectionWithSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:listBotConnectionWithSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBotConnectionWithSecretsResult.fromMap(result);
}

pulumi.Output<ListBotConnectionWithSecretsResult> listBotConnectionWithSecretsOutput(
  ListBotConnectionWithSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:botservice:listBotConnectionWithSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListBotConnectionWithSecretsResult.fromMap);
}

/// Lists a Channel registration for a Bot Service including secrets
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_botservice_list_channel_with_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListChannelWithKeysResult> listChannelWithKeys(
  ListChannelWithKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:listChannelWithKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListChannelWithKeysResult.fromMap(result);
}

pulumi.Output<ListChannelWithKeysResult> listChannelWithKeysOutput(
  ListChannelWithKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:botservice:listChannelWithKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListChannelWithKeysResult.fromMap);
}

/// Lists the QnA Maker endpoint keys
///
/// Uses Azure REST API version 2023-09-15-preview.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_botservice_list_qn_amaker_endpoint_key_args_doc}
/// [options] Invoke options controlling this call.
Future<ListQnAMakerEndpointKeyResult> listQnAMakerEndpointKey(
  ListQnAMakerEndpointKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:botservice:listQnAMakerEndpointKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListQnAMakerEndpointKeyResult.fromMap(result);
}

pulumi.Output<ListQnAMakerEndpointKeyResult> listQnAMakerEndpointKeyOutput(
  ListQnAMakerEndpointKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:botservice:listQnAMakerEndpointKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListQnAMakerEndpointKeyResult.fromMap);
}
