import 'package:pulumi/pulumi.dart';
import 'get_address_group_iam_policy_args.dart';
import 'get_address_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for projectaddressgroup
Future<GetAddressGroupIamPolicyResult> getAddressGroupIamPolicy(
  GetAddressGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networksecurity/getAddressGroupIamPolicy:getAddressGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupIamPolicyResult.fromMap(result);
}
