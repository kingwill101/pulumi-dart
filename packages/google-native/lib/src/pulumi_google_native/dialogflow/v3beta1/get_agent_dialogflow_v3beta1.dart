import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_dialogflow_v3beta1_args.dart';
import 'get_agent_dialogflow_v3beta1_result.dart';

/// Retrieves the specified agent.
Future<GetAgentDialogflowV3beta1Result> getAgentDialogflowV3beta1(
  GetAgentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentDialogflowV3beta1Result.fromMap(result);
}
