import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_args.dart';
import 'get_agent_result.dart';

/// Retrieves the specified agent.
Future<GetAgentResult> getAgent(
  GetAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentResult.fromMap(result);
}
