import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v1_iam_policy_args.dart';
import 'get_v1_iam_policy_result.dart';

/// Gets the access control policy for an Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
Future<GetV1IamPolicyResult> getV1IamPolicy(
  GetV1IamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getV1IamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV1IamPolicyResult.fromMap(result);
}
