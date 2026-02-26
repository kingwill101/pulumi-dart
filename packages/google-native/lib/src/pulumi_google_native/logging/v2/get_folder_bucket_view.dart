import 'package:pulumi/pulumi.dart';
import 'get_folder_bucket_view_args.dart';
import 'get_folder_bucket_view_result.dart';

/// Gets a view on a log bucket.
Future<GetFolderBucketViewResult> getFolderBucketView(
  GetFolderBucketViewArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucketView',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketViewResult.fromMap(result);
}
