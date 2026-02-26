import 'package:pulumi/pulumi.dart';
import 'get_intent_args2.dart';
import 'get_intent_result2.dart';

/// Retrieves the specified intent.
Future<GetIntentResult2> getIntent2(
  GetIntentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getIntent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIntentResult2.fromMap(result);
}
