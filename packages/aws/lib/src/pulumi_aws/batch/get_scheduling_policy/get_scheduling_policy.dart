import 'package:pulumi/pulumi.dart';
import 'get_scheduling_policy_args.dart';
import 'get_scheduling_policy_result.dart';

/// The Batch Scheduling Policy data source allows access to details of a specific Scheduling Policy within AWS Batch.
Future<GetSchedulingPolicyResult> getSchedulingPolicy(
  GetSchedulingPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getSchedulingPolicy:getSchedulingPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSchedulingPolicyResult.fromMap(result);
}
