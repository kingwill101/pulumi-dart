import 'package:pulumi/pulumi.dart';
import 'get_entry_group_iam_policy_args3.dart';
import 'get_entry_group_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEntryGroupIamPolicyResult3> getEntryGroupIamPolicy3(
  GetEntryGroupIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntryGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult3.fromMap(result);
}
