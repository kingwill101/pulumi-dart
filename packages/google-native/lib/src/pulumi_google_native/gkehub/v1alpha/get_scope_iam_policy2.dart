import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scope_iam_policy_args2.dart';
import 'get_scope_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetScopeIamPolicyResult2> getScopeIamPolicy2(
  GetScopeIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScopeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyResult2.fromMap(result);
}
