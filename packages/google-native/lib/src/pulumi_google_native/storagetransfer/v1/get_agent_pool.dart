import 'package:pulumi/pulumi.dart' hide Config;
import 'get_agent_pool_args.dart';
import 'get_agent_pool_result.dart';

/// Gets an agent pool.
Future<GetAgentPoolResult> getAgentPool(
  GetAgentPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storagetransfer/v1:getAgentPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAgentPoolResult.fromMap(result);
}
