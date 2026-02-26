import 'package:pulumi/pulumi.dart';
import 'get_hub_iam_policy_args2.dart';
import 'get_hub_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetHubIamPolicyResult2> getHubIamPolicy2(
  GetHubIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHubIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHubIamPolicyResult2.fromMap(result);
}
