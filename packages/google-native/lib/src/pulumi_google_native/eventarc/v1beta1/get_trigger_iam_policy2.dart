import 'package:pulumi/pulumi.dart' hide Config;
import 'get_trigger_iam_policy_args2.dart';
import 'get_trigger_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetTriggerIamPolicyResult2> getTriggerIamPolicy2(
  GetTriggerIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1beta1:getTriggerIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTriggerIamPolicyResult2.fromMap(result);
}
