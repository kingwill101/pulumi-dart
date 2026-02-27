import 'package:pulumi/pulumi.dart';
import 'get_scope_iam_policy_args.dart';
import 'get_scope_iam_policy_result.dart';

/// Retrieves the current IAM policy data for scope
Future<GetScopeIamPolicyResult> getScopeIamPolicy(
  GetScopeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getScopeIamPolicy:getScopeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyResult.fromMap(result);
}
