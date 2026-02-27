import 'package:pulumi/pulumi.dart' hide Config;
import 'get_channel_iam_policy_args.dart';
import 'get_channel_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetChannelIamPolicyResult> getChannelIamPolicy(
  GetChannelIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetChannelIamPolicyResult.fromMap(result);
}
