import 'package:pulumi/pulumi.dart';
import 'get_disk_iam_policy_args.dart';
import 'get_disk_iam_policy_result.dart';

/// Retrieves the current IAM policy data for disk
Future<GetDiskIamPolicyResult> getDiskIamPolicy(
  GetDiskIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDiskIamPolicy:getDiskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyResult.fromMap(result);
}
