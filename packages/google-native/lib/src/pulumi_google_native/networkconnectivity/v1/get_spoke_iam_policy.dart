import 'package:pulumi/pulumi.dart' hide Config;
import 'get_spoke_iam_policy_args.dart';
import 'get_spoke_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSpokeIamPolicyResult> getSpokeIamPolicy(
  GetSpokeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getSpokeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpokeIamPolicyResult.fromMap(result);
}
