import 'package:pulumi/pulumi.dart';
import 'get_peering_iam_policy_args2.dart';
import 'get_peering_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPeeringIamPolicyResult2> getPeeringIamPolicy2(
  GetPeeringIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getPeeringIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringIamPolicyResult2.fromMap(result);
}
