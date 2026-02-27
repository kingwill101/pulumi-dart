import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_iam_policy_args.dart';
import 'get_workload_identity_pool_iam_policy_result.dart';

Future<GetWorkloadIdentityPoolIamPolicyResult> getWorkloadIdentityPoolIamPolicy(
  GetWorkloadIdentityPoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPoolIamPolicy:getWorkloadIdentityPoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolIamPolicyResult.fromMap(result);
}
