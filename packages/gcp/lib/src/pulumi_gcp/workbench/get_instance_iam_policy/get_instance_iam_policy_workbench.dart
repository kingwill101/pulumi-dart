import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_workbench_args.dart';
import 'get_instance_iam_policy_workbench_result.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyWorkbenchResult> getInstanceIamPolicyWorkbench(
  GetInstanceIamPolicyWorkbenchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:workbench/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyWorkbenchResult.fromMap(result);
}
