import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_intent_dialogflow_v2beta1_args.dart';
import 'get_intent_dialogflow_v2beta1_result.dart';

/// Retrieves the specified intent.
Future<GetIntentDialogflowV2beta1Result> getIntentDialogflowV2beta1(
  GetIntentDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentDialogflowV2beta1Result.fromMap(result);
}
