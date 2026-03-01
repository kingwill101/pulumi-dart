import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_args.dart';
import 'get_bot_result.dart';
import 'list_bot_secrets_args.dart';
import 'list_bot_secrets_result.dart';

/// Get a HealthBot.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-05-01, 2025-05-25, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthbot [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthbot_get_bot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBotResult> getBot(
  GetBotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthbot:getBot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotResult.fromMap(result);
}

/// List all secrets of a HealthBot.
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2023-05-01, 2025-05-25, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthbot [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_healthbot_list_bot_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBotSecretsResult> listBotSecrets(
  ListBotSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:healthbot:listBotSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBotSecretsResult.fromMap(result);
}
