import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_iam_policy_cloudrunv2_args.dart';
import 'get_service_iam_policy_cloudrunv2_result.dart';

/// Retrieves the current IAM policy data for service
Future<GetServiceIamPolicyCloudrunv2Result> getServiceIamPolicyCloudrunv2(
  GetServiceIamPolicyCloudrunv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyCloudrunv2Result.fromMap(result);
}
