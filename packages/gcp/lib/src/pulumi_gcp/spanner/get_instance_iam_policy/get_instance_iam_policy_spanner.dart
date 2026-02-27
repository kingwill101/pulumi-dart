import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_spanner_args.dart';
import 'get_instance_iam_policy_spanner_result.dart';

/// Retrieves the current IAM policy data for a Spanner instance.
///
/// ## example
Future<GetInstanceIamPolicySpannerResult> getInstanceIamPolicySpanner(
  GetInstanceIamPolicySpannerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicySpannerResult.fromMap(result);
}
