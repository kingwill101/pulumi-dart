import 'package:pulumi/pulumi.dart';
import 'get_intent_args3.dart';
import 'get_intent_result3.dart';

/// Retrieves the specified intent.
Future<GetIntentResult3> getIntent3(
  GetIntentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getIntent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIntentResult3.fromMap(result);
}
