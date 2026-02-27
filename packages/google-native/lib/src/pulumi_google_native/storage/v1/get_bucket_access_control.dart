import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_access_control_args.dart';
import 'get_bucket_access_control_result.dart';

/// Returns the ACL entry for the specified entity on the specified bucket.
Future<GetBucketAccessControlResult> getBucketAccessControl(
  GetBucketAccessControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketAccessControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketAccessControlResult.fromMap(result);
}
