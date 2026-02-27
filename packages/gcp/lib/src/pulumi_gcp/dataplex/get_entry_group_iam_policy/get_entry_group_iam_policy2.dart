import 'package:pulumi/pulumi.dart';
import 'get_entry_group_iam_policy_args2.dart';
import 'get_entry_group_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for entrygroup
Future<GetEntryGroupIamPolicyResult2> getEntryGroupIamPolicy2(
  GetEntryGroupIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult2.fromMap(result);
}
