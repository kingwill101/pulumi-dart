import 'package:pulumi/pulumi.dart';
import 'get_federation_iam_policy_args2.dart';
import 'get_federation_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFederationIamPolicyResult2> getFederationIamPolicy2(
  GetFederationIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFederationIamPolicyResult2.fromMap(result);
}
