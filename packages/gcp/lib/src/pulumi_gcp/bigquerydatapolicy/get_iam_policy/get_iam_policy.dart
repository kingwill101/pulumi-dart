import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_policy_args.dart';
import 'get_iam_policy_result.dart';

/// Retrieves the current IAM policy data for datapolicy
Future<GetIamPolicyResult> getIamPolicy(
  GetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquerydatapolicy/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult.fromMap(result);
}
