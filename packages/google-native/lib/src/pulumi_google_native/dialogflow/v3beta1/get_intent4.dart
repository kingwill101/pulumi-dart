import 'package:pulumi/pulumi.dart' hide Config;
import 'get_intent_args4.dart';
import 'get_intent_result4.dart';

/// Retrieves the specified intent.
Future<GetIntentResult4> getIntent4(
  GetIntentArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getIntent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIntentResult4.fromMap(result);
}
