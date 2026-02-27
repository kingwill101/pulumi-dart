import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_iam_policy_compute_v1_args.dart';
import 'get_subnetwork_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetSubnetworkIamPolicyComputeV1Result> getSubnetworkIamPolicyComputeV1(
  GetSubnetworkIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSubnetworkIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyComputeV1Result.fromMap(result);
}
