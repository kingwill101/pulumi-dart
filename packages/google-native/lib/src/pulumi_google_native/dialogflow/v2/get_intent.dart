import 'package:pulumi/pulumi.dart';
import 'get_intent_args.dart';
import 'get_intent_result.dart';

/// Retrieves the specified intent.
Future<GetIntentResult> getIntent(
  GetIntentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getIntent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIntentResult.fromMap(result);
}
