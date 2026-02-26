import 'package:pulumi/pulumi.dart';
import 'get_region_disk_iam_policy_args3.dart';
import 'get_region_disk_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetRegionDiskIamPolicyResult3> getRegionDiskIamPolicy3(
  GetRegionDiskIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionDiskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyResult3.fromMap(result);
}
