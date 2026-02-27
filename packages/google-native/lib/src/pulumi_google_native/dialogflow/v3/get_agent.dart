import 'package:pulumi/pulumi.dart' hide Config;
import 'get_agent_args.dart';
import 'get_agent_result.dart';

/// Retrieves the specified agent.
Future<GetAgentResult> getAgent(
  GetAgentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getAgent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAgentResult.fromMap(result);
}
