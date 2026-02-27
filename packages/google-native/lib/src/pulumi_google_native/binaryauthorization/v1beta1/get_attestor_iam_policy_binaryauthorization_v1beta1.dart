import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attestor_iam_policy_binaryauthorization_v1beta1_args.dart';
import 'get_attestor_iam_policy_binaryauthorization_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAttestorIamPolicyBinaryauthorizationV1beta1Result>
    getAttestorIamPolicyBinaryauthorizationV1beta1(
  GetAttestorIamPolicyBinaryauthorizationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestorIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttestorIamPolicyBinaryauthorizationV1beta1Result.fromMap(result);
}
