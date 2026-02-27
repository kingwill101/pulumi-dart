import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_bucket_view_args.dart';
import 'get_folder_bucket_view_result.dart';

/// Gets a view on a log bucket.
Future<GetFolderBucketViewResult> getFolderBucketView(
  GetFolderBucketViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucketView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketViewResult.fromMap(result);
}
