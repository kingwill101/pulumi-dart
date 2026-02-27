import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_lock_configuration_args.dart';
import 'get_bucket_object_lock_configuration_result.dart';

/// Provides details about an AWS S3 (Simple Storage) Bucket Object Lock Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetBucketObjectLockConfigurationResult> getBucketObjectLockConfiguration(
  GetBucketObjectLockConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObjectLockConfiguration:getBucketObjectLockConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectLockConfigurationResult.fromMap(result);
}
