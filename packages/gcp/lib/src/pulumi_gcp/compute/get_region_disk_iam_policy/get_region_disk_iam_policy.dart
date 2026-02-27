import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_disk_iam_policy_args.dart';
import 'get_region_disk_iam_policy_result.dart';

/// Retrieves the current IAM policy data for regiondisk
Future<GetRegionDiskIamPolicyResult> getRegionDiskIamPolicy(
  GetRegionDiskIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionDiskIamPolicy:getRegionDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyResult.fromMap(result);
}
