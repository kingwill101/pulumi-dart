import 'package:pulumi/pulumi.dart';
import 'get_web_cloud_run_service_iam_policy_args.dart';
import 'get_web_cloud_run_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webcloudrunservice
Future<GetWebCloudRunServiceIamPolicyResult> getWebCloudRunServiceIamPolicy(
  GetWebCloudRunServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebCloudRunServiceIamPolicy:getWebCloudRunServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebCloudRunServiceIamPolicyResult.fromMap(result);
}
