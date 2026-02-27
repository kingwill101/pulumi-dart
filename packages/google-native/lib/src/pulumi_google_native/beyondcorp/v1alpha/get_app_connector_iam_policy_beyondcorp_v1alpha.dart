import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connector_iam_policy_beyondcorp_v1alpha_args.dart';
import 'get_app_connector_iam_policy_beyondcorp_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAppConnectorIamPolicyBeyondcorpV1alphaResult>
    getAppConnectorIamPolicyBeyondcorpV1alpha(
  GetAppConnectorIamPolicyBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnectorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorIamPolicyBeyondcorpV1alphaResult.fromMap(result);
}
