import 'package:pulumi/pulumi.dart';
import 'get_subnetwork_iam_policy_args2.dart';
import 'get_subnetwork_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetSubnetworkIamPolicyResult2> getSubnetworkIamPolicy2(
  GetSubnetworkIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSubnetworkIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyResult2.fromMap(result);
}
