import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_args.dart';
import 'get_bot_result.dart';

/// Provides details about a specific Amazon Lex Bot.
Future<GetBotResult> getBot(
  GetBotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getBot:getBot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotResult.fromMap(result);
}
