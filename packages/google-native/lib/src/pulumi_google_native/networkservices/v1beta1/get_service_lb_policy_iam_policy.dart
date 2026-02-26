import 'package:pulumi/pulumi.dart';
import 'get_service_lb_policy_iam_policy_args.dart';
import 'get_service_lb_policy_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceLbPolicyIamPolicyResult> getServiceLbPolicyIamPolicy(
  GetServiceLbPolicyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceLbPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceLbPolicyIamPolicyResult.fromMap(result);
}
