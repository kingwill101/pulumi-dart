import 'package:pulumi/pulumi.dart';
import 'get_trigger_iam_policy_args.dart';
import 'get_trigger_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetTriggerIamPolicyResult> getTriggerIamPolicy(
  GetTriggerIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getTriggerIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTriggerIamPolicyResult.fromMap(result);
}
