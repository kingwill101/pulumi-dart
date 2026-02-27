import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_looker_v1_args.dart';
import 'get_instance_iam_policy_looker_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyLookerV1Result> getInstanceIamPolicyLookerV1(
  GetInstanceIamPolicyLookerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:looker/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyLookerV1Result.fromMap(result);
}
