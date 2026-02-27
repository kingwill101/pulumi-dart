import 'package:pulumi/pulumi.dart';
import 'get_bot_alias_args.dart';
import 'get_bot_alias_result.dart';

/// Provides details about a specific Amazon Lex Bot Alias.
Future<GetBotAliasResult> getBotAlias(
  GetBotAliasArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getBotAlias:getBotAlias',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBotAliasResult.fromMap(result);
}
