import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_iam_policy_args6.dart';
import 'get_service_iam_policy_result6.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceIamPolicyResult6> getServiceIamPolicy6(
  GetServiceIamPolicyArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult6.fromMap(result);
}
