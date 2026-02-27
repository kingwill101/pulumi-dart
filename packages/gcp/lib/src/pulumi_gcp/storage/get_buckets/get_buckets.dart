import 'package:pulumi/pulumi.dart';
import 'get_buckets_args.dart';
import 'get_buckets_result.dart';

/// Gets a list of existing GCS buckets.
/// See [the official documentation](https://cloud.google.com/storage/docs/introduction)
/// and [API](https://cloud.google.com/storage/docs/json_api/v1/buckets/list).
///
/// ## Example Usage
///
/// Example GCS buckets.
Future<GetBucketsResult> getBuckets(
  GetBucketsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBuckets:getBuckets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketsResult.fromMap(result);
}
