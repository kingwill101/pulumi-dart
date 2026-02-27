import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for service
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}
