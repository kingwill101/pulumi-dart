import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_disk_iam_policy_args2.dart';
import 'get_region_disk_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionDiskIamPolicyResult2> getRegionDiskIamPolicy2(
  GetRegionDiskIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionDiskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyResult2.fromMap(result);
}
