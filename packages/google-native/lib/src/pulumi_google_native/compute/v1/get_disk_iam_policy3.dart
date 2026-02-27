import 'package:pulumi/pulumi.dart' hide Config;
import 'get_disk_iam_policy_args3.dart';
import 'get_disk_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetDiskIamPolicyResult3> getDiskIamPolicy3(
  GetDiskIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getDiskIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyResult3.fromMap(result);
}
