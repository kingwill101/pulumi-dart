import 'package:pulumi/pulumi.dart';
import 'get_workload_identity_pool_iam_policy_args.dart';
import 'get_workload_identity_pool_iam_policy_result.dart';

Future<GetWorkloadIdentityPoolIamPolicyResult> getWorkloadIdentityPoolIamPolicy(
  GetWorkloadIdentityPoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPoolIamPolicy:getWorkloadIdentityPoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolIamPolicyResult.fromMap(result);
}
