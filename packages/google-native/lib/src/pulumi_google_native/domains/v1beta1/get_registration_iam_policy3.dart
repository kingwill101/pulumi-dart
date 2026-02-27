import 'package:pulumi/pulumi.dart' hide Config;
import 'get_registration_iam_policy_args3.dart';
import 'get_registration_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegistrationIamPolicyResult3> getRegistrationIamPolicy3(
  GetRegistrationIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1beta1:getRegistrationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistrationIamPolicyResult3.fromMap(result);
}
