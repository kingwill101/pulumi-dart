import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workforce_pool_iam_policy_args.dart';
import 'get_workforce_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for workforcepool
Future<GetWorkforcePoolIamPolicyResult> getWorkforcePoolIamPolicy(
  GetWorkforcePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkforcePoolIamPolicy:getWorkforcePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkforcePoolIamPolicyResult.fromMap(result);
}
