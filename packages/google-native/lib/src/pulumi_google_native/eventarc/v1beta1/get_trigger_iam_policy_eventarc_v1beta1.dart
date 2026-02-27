import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_iam_policy_eventarc_v1beta1_args.dart';
import 'get_trigger_iam_policy_eventarc_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetTriggerIamPolicyEventarcV1beta1Result>
    getTriggerIamPolicyEventarcV1beta1(
  GetTriggerIamPolicyEventarcV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1beta1:getTriggerIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerIamPolicyEventarcV1beta1Result.fromMap(result);
}
