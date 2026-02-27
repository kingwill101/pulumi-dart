import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ca_pool_iam_policy_args.dart';
import 'get_ca_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for capool
Future<GetCaPoolIamPolicyResult> getCaPoolIamPolicy(
  GetCaPoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getCaPoolIamPolicy:getCaPoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaPoolIamPolicyResult.fromMap(result);
}
