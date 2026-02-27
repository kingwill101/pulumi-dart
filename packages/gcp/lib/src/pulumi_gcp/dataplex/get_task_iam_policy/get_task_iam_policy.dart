import 'package:pulumi/pulumi.dart';
import 'get_task_iam_policy_args.dart';
import 'get_task_iam_policy_result.dart';

/// Retrieves the current IAM policy data for task
Future<GetTaskIamPolicyResult> getTaskIamPolicy(
  GetTaskIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getTaskIamPolicy:getTaskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskIamPolicyResult.fromMap(result);
}
