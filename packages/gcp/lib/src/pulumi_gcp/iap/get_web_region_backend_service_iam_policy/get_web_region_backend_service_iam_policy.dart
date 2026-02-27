import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_region_backend_service_iam_policy_args.dart';
import 'get_web_region_backend_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webregionbackendservice
Future<GetWebRegionBackendServiceIamPolicyResult>
    getWebRegionBackendServiceIamPolicy(
  GetWebRegionBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionBackendServiceIamPolicy:getWebRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebRegionBackendServiceIamPolicyResult.fromMap(result);
}
