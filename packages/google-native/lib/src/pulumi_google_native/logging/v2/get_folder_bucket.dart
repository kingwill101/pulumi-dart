import 'package:pulumi/pulumi.dart' hide Config;
import 'get_folder_bucket_args.dart';
import 'get_folder_bucket_result.dart';

/// Gets a log bucket.
Future<GetFolderBucketResult> getFolderBucket(
  GetFolderBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketResult.fromMap(result);
}
