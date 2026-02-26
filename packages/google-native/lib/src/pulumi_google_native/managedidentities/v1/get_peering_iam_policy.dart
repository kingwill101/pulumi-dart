import 'package:pulumi/pulumi.dart';
import 'get_peering_iam_policy_args.dart';
import 'get_peering_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPeeringIamPolicyResult> getPeeringIamPolicy(
  GetPeeringIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getPeeringIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringIamPolicyResult.fromMap(result);
}
