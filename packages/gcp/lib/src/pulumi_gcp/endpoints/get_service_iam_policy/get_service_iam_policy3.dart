import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args3.dart';
import 'get_service_iam_policy_result3.dart';

/// Retrieves the current IAM policy data for service
Future<GetServiceIamPolicyResult3> getServiceIamPolicy3(
  GetServiceIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:endpoints/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult3.fromMap(result);
}
