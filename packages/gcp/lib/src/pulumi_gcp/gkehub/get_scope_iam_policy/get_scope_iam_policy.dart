import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scope_iam_policy_args.dart';
import 'get_scope_iam_policy_result.dart';

/// Retrieves the current IAM policy data for scope
Future<GetScopeIamPolicyResult> getScopeIamPolicy(
  GetScopeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getScopeIamPolicy:getScopeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyResult.fromMap(result);
}
