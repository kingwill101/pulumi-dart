import 'package:pulumi/pulumi.dart';
import 'get_folder_bucket_link_args.dart';
import 'get_folder_bucket_link_result.dart';

/// Gets a link.
Future<GetFolderBucketLinkResult> getFolderBucketLink(
  GetFolderBucketLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucketLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketLinkResult.fromMap(result);
}
