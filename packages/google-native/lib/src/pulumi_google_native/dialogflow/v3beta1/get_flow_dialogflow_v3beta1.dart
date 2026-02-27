import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flow_dialogflow_v3beta1_args.dart';
import 'get_flow_dialogflow_v3beta1_result.dart';

/// Retrieves the specified flow.
Future<GetFlowDialogflowV3beta1Result> getFlowDialogflowV3beta1(
  GetFlowDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowDialogflowV3beta1Result.fromMap(result);
}
