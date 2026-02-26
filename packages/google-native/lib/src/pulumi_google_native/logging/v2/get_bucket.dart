import 'package:pulumi/pulumi.dart';
import 'get_bucket_args.dart';
import 'get_bucket_result.dart';

/// Gets a log bucket.
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}
