import 'package:pulumi/pulumi.dart';
import 'get_subnetwork_iam_policy_args.dart';
import 'get_subnetwork_iam_policy_result.dart';

/// Retrieves the current IAM policy data for subnetwork
Future<GetSubnetworkIamPolicyResult> getSubnetworkIamPolicy(
  GetSubnetworkIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetworkIamPolicy:getSubnetworkIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyResult.fromMap(result);
}
