import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_result.dart';

/// Retrieves an object or its metadata.
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketObject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}
