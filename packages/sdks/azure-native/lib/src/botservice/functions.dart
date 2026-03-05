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
