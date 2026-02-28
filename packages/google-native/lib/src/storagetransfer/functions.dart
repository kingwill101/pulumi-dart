import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_pool_args.dart';
import 'get_agent_pool_result.dart';
import 'get_transfer_job_args.dart';
import 'get_transfer_job_result.dart';

/// Gets an agent pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagetransfer_v1_get_agent_pool_args_doc}
/// [options] Invoke options controlling this call.
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

/// Gets a transfer job.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagetransfer_v1_get_transfer_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransferJobResult> getTransferJob(
  GetTransferJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storagetransfer/v1:getTransferJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransferJobResult.fromMap(result);
}
