import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_iam_policy_args.dart';
import 'get_subnetwork_iam_policy_result.dart';

/// Retrieves the current IAM policy data for subnetwork
Future<GetSubnetworkIamPolicyResult> getSubnetworkIamPolicy(
  GetSubnetworkIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetworkIamPolicy:getSubnetworkIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyResult.fromMap(result);
}
