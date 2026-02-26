import 'package:pulumi/pulumi.dart';
import 'get_address_group_iam_policy_args2.dart';
import 'get_address_group_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAddressGroupIamPolicyResult2> getAddressGroupIamPolicy2(
  GetAddressGroupIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupIamPolicyResult2.fromMap(result);
}
