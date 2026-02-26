import 'package:pulumi/pulumi.dart';
import 'get_bucket_access_control_args.dart';
import 'get_bucket_access_control_result.dart';

/// Returns the ACL entry for the specified entity on the specified bucket.
Future<GetBucketAccessControlResult> getBucketAccessControl(
  GetBucketAccessControlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketAccessControl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketAccessControlResult.fromMap(result);
}
