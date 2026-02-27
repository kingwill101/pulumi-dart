import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scope_iam_policy_gkehub_v1alpha_args.dart';
import 'get_scope_iam_policy_gkehub_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetScopeIamPolicyGkehubV1alphaResult> getScopeIamPolicyGkehubV1alpha(
  GetScopeIamPolicyGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScopeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyGkehubV1alphaResult.fromMap(result);
}
