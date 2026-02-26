import 'package:pulumi/pulumi.dart';
import 'get_mesh_iam_policy_args2.dart';
import 'get_mesh_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMeshIamPolicyResult2> getMeshIamPolicy2(
  GetMeshIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMeshIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMeshIamPolicyResult2.fromMap(result);
}
