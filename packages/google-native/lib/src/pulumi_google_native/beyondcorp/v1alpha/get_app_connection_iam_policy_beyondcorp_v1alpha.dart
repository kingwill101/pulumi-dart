import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_app_connection_iam_policy_beyondcorp_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAppConnectionIamPolicyBeyondcorpV1alphaResult>
    getAppConnectionIamPolicyBeyondcorpV1alpha(
  GetAppConnectionIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}
