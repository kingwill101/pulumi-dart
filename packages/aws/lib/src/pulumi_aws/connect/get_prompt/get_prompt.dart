import 'package:pulumi/pulumi.dart';
import 'get_prompt_args.dart';
import 'get_prompt_result.dart';

/// Provides details about a specific Amazon Connect Prompt.
///
/// ## Example Usage
///
/// By `name`
Future<GetPromptResult> getPrompt(
  GetPromptArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getPrompt:getPrompt',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPromptResult.fromMap(result);
}
