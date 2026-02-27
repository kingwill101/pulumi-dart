import 'package:pulumi/pulumi.dart' hide Config;
import 'get_registration_iam_policy_args2.dart';
import 'get_registration_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegistrationIamPolicyResult2> getRegistrationIamPolicy2(
  GetRegistrationIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1alpha2:getRegistrationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistrationIamPolicyResult2.fromMap(result);
}
