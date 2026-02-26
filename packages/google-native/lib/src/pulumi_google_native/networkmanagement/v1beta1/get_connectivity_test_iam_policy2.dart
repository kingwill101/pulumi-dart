import 'package:pulumi/pulumi.dart';
import 'get_connectivity_test_iam_policy_args2.dart';
import 'get_connectivity_test_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectivityTestIamPolicyResult2> getConnectivityTestIamPolicy2(
  GetConnectivityTestIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkmanagement/v1beta1:getConnectivityTestIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestIamPolicyResult2.fromMap(result);
}
