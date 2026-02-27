import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scope_iam_policy_gkehub_v1beta_args.dart';
import 'get_scope_iam_policy_gkehub_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetScopeIamPolicyGkehubV1betaResult> getScopeIamPolicyGkehubV1beta(
  GetScopeIamPolicyGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScopeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyGkehubV1betaResult.fromMap(result);
}
