import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_bucket_link_args.dart';
import 'get_folder_bucket_link_result.dart';

/// Gets a link.
Future<GetFolderBucketLinkResult> getFolderBucketLink(
  GetFolderBucketLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderBucketLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBucketLinkResult.fromMap(result);
}
