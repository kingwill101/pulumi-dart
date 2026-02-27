import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_iam_policy_args.dart';
import 'get_web_iam_policy_result.dart';

/// Retrieves the current IAM policy data for web
Future<GetWebIamPolicyResult> getWebIamPolicy(
  GetWebIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebIamPolicy:getWebIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebIamPolicyResult.fromMap(result);
}
