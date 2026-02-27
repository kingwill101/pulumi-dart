import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_backend_service_iam_policy_args.dart';
import 'get_web_backend_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webbackendservice
Future<GetWebBackendServiceIamPolicyResult> getWebBackendServiceIamPolicy(
  GetWebBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebBackendServiceIamPolicy:getWebBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebBackendServiceIamPolicyResult.fromMap(result);
}
