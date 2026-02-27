import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_intent_dialogflow_v3beta1_args.dart';
import 'get_intent_dialogflow_v3beta1_result.dart';

/// Retrieves the specified intent.
Future<GetIntentDialogflowV3beta1Result> getIntentDialogflowV3beta1(
  GetIntentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentDialogflowV3beta1Result.fromMap(result);
}
