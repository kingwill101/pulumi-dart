import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_group_iam_policy_args.dart';
import 'get_address_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for projectaddressgroup
/// [args] Arguments passed to this invoke. {@macro pulumi_networksecurity_get_address_group_iam_policy_get_address_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressGroupIamPolicyResult> getAddressGroupIamPolicy(
  GetAddressGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networksecurity/getAddressGroupIamPolicy:getAddressGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupIamPolicyResult.fromMap(result);
}
