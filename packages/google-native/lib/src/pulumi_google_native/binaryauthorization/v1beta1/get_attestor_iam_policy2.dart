import 'package:pulumi/pulumi.dart' hide Config;
import 'get_attestor_iam_policy_args2.dart';
import 'get_attestor_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAttestorIamPolicyResult2> getAttestorIamPolicy2(
  GetAttestorIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getAttestorIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttestorIamPolicyResult2.fromMap(result);
}
