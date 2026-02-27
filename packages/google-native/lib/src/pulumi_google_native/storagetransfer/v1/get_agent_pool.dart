import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_pool_args.dart';
import 'get_agent_pool_result.dart';

/// Gets an agent pool.
Future<GetAgentPoolResult> getAgentPool(
  GetAgentPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storagetransfer/v1:getAgentPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentPoolResult.fromMap(result);
}
