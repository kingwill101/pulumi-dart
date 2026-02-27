import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_sourcerepo_args.dart';
import 'get_repository_sourcerepo_result.dart';

/// Get infomation about an existing Google Cloud Source Repository.
/// For more information see [the official documentation](https://cloud.google.com/source-repositories)
/// and
/// [API](https://cloud.google.com/source-repositories/docs/reference/rest/v1/projects.repos).
Future<GetRepositorySourcerepoResult> getRepositorySourcerepo(
  GetRepositorySourcerepoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepository:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositorySourcerepoResult.fromMap(result);
}
