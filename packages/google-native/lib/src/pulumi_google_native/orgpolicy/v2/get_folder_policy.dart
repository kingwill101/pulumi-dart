import 'package:pulumi/pulumi.dart';
import 'get_folder_policy_args.dart';
import 'get_folder_policy_result.dart';

/// Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.
Future<GetFolderPolicyResult> getFolderPolicy(
  GetFolderPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getFolderPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderPolicyResult.fromMap(result);
}
