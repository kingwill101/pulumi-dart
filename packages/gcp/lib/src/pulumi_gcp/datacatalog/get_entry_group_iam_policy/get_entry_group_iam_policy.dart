import 'package:pulumi/pulumi.dart';
import 'get_entry_group_iam_policy_args.dart';
import 'get_entry_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for entrygroup
Future<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicy(
  GetEntryGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult.fromMap(result);
}
