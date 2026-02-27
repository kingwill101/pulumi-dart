import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args4.dart';
import 'get_service_iam_policy_result4.dart';

/// Retrieves the current IAM policy data for service
Future<GetServiceIamPolicyResult4> getServiceIamPolicy4(
  GetServiceIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicedirectory/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult4.fromMap(result);
}
