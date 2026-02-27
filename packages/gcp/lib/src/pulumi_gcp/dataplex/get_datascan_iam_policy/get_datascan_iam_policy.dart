import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datascan_iam_policy_args.dart';
import 'get_datascan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for datascan
Future<GetDatascanIamPolicyResult> getDatascanIamPolicy(
  GetDatascanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDatascanIamPolicy:getDatascanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatascanIamPolicyResult.fromMap(result);
}
