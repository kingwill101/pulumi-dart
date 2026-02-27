import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_intent_dialogflow_v3_args.dart';
import 'get_intent_dialogflow_v3_result.dart';

/// Retrieves the specified intent.
Future<GetIntentDialogflowV3Result> getIntentDialogflowV3(
  GetIntentDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentDialogflowV3Result.fromMap(result);
}
