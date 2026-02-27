import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mesh_iam_policy_networkservices_v1beta1_args.dart';
import 'get_mesh_iam_policy_networkservices_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMeshIamPolicyNetworkservicesV1beta1Result>
    getMeshIamPolicyNetworkservicesV1beta1(
  GetMeshIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMeshIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}
