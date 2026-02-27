import 'package:pulumi/pulumi.dart';
import 'get_tags_args.dart';
import 'get_tags_result.dart';

/// Get information about Artifact Registry tags.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/overview)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.tags/list).
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getTags:getTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}
