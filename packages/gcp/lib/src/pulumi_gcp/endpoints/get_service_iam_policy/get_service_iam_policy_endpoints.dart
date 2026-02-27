import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_iam_policy_endpoints_args.dart';
import 'get_service_iam_policy_endpoints_result.dart';

/// Retrieves the current IAM policy data for service
Future<GetServiceIamPolicyEndpointsResult> getServiceIamPolicyEndpoints(
  GetServiceIamPolicyEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:endpoints/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyEndpointsResult.fromMap(result);
}
