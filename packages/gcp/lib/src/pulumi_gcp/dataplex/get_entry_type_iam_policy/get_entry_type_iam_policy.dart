import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_type_iam_policy_args.dart';
import 'get_entry_type_iam_policy_result.dart';

/// Retrieves the current IAM policy data for entrytype
Future<GetEntryTypeIamPolicyResult> getEntryTypeIamPolicy(
  GetEntryTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getEntryTypeIamPolicy:getEntryTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryTypeIamPolicyResult.fromMap(result);
}
