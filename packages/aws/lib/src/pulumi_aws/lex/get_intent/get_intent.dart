import 'package:pulumi/pulumi.dart';
import 'get_intent_args.dart';
import 'get_intent_result.dart';

/// Provides details about a specific Amazon Lex Intent.
Future<GetIntentResult> getIntent(
  GetIntentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getIntent:getIntent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIntentResult.fromMap(result);
}
