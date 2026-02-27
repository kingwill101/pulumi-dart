import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_bucket_args.dart';
import 'get_folder_bucket_result.dart';

/// Gets a log bucket.
Future<GetFolderBucketResult> getFolderBucket(
  GetFolderBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketResult.fromMap(result);
}
