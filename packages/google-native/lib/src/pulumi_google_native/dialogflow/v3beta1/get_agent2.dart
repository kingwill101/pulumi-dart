import 'package:pulumi/pulumi.dart' hide Config;
import 'get_agent_args2.dart';
import 'get_agent_result2.dart';

/// Retrieves the specified agent.
Future<GetAgentResult2> getAgent2(
  GetAgentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getAgent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAgentResult2.fromMap(result);
}
