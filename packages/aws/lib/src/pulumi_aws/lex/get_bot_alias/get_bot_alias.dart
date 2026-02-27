import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_alias_args.dart';
import 'get_bot_alias_result.dart';

/// Provides details about a specific Amazon Lex Bot Alias.
Future<GetBotAliasResult> getBotAlias(
  GetBotAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getBotAlias:getBotAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotAliasResult.fromMap(result);
}
