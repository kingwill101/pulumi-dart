import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v1beta1_iam_policy_args.dart';
import 'get_v1beta1_iam_policy_result.dart';

/// Gets the access control policy for an Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
Future<GetV1beta1IamPolicyResult> getV1beta1IamPolicy(
  GetV1beta1IamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1beta1:getV1beta1IamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV1beta1IamPolicyResult.fromMap(result);
}
