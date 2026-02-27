import 'package:pulumi/pulumi.dart';
import 'get_repositories_args.dart';
import 'get_repositories_result.dart';

/// Get information about Artifact Registry repositories.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories/list).
Future<GetRepositoriesResult> getRepositories(
  GetRepositoriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepositories:getRepositories',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoriesResult.fromMap(result);
}
