import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args4.dart';
import 'get_service_iam_policy_result4.dart';

/// Gets the IAM Access Control policy currently in effect for the given Cloud Run service. This result does not include any inherited policies.
Future<GetServiceIamPolicyResult4> getServiceIamPolicy4(
  GetServiceIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult4.fromMap(result);
}
