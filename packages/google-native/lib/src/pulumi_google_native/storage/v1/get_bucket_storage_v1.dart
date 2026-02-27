import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_storage_v1_args.dart';
import 'get_bucket_storage_v1_result.dart';

/// Returns metadata for the specified bucket.
Future<GetBucketStorageV1Result> getBucketStorageV1(
  GetBucketStorageV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketStorageV1Result.fromMap(result);
}
