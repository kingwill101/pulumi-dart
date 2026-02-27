import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args2.dart';
import 'get_service_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for service
Future<GetServiceIamPolicyResult2> getServiceIamPolicy2(
  GetServiceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult2.fromMap(result);
}
