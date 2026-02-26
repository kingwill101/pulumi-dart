import 'package:pulumi/pulumi.dart';
import 'get_tenant_iam_policy_args.dart';
import 'get_tenant_iam_policy_result.dart';

/// Gets the access control policy for a resource. An error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it. Caller must have the right Google IAM permission on the resource.
Future<GetTenantIamPolicyResult> getTenantIamPolicy(
  GetTenantIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getTenantIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTenantIamPolicyResult.fromMap(result);
}
