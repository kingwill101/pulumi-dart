import 'package:pulumi/pulumi.dart';
import 'get_bucket_args2.dart';
import 'get_bucket_result2.dart';

/// Returns metadata for the specified bucket.
Future<GetBucketResult2> getBucket2(
  GetBucketArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketResult2.fromMap(result);
}
