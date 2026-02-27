import 'package:pulumi/pulumi.dart';
import 'get_datascan_iam_policy_args.dart';
import 'get_datascan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for datascan
Future<GetDatascanIamPolicyResult> getDatascanIamPolicy(
  GetDatascanIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDatascanIamPolicy:getDatascanIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatascanIamPolicyResult.fromMap(result);
}
