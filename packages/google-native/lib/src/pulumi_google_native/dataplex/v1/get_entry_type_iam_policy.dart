import 'package:pulumi/pulumi.dart';
import 'get_entry_type_iam_policy_args.dart';
import 'get_entry_type_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEntryTypeIamPolicyResult> getEntryTypeIamPolicy(
  GetEntryTypeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntryTypeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryTypeIamPolicyResult.fromMap(result);
}
