import 'package:pulumi/pulumi.dart';
import 'get_hl7_v2_store_iam_policy_args.dart';
import 'get_hl7_v2_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare HL7v2 store.
///
/// ## example
Future<GetHl7V2StoreIamPolicyResult> getHl7V2StoreIamPolicy(
  GetHl7V2StoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getHl7V2StoreIamPolicy:getHl7V2StoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreIamPolicyResult.fromMap(result);
}
