import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_spanner_v1_args.dart';
import 'get_instance_iam_policy_spanner_v1_result.dart';

/// Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set. Authorization requires `spanner.instances.getIamPolicy` on resource.
Future<GetInstanceIamPolicySpannerV1Result> getInstanceIamPolicySpannerV1(
  GetInstanceIamPolicySpannerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicySpannerV1Result.fromMap(result);
}
