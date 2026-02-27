import 'package:pulumi/pulumi.dart';
import 'get_agent_agent_versions_args.dart';
import 'get_agent_agent_versions_result.dart';

/// Data source for managing an AWS Amazon BedrockAgent Agent Versions.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAgentAgentVersionsResult> getAgentAgentVersions(
  GetAgentAgentVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getAgentAgentVersions:getAgentAgentVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAgentAgentVersionsResult.fromMap(result);
}
