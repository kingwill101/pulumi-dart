import 'package:pulumi/pulumi.dart';
import 'get_repository_args2.dart';
import 'get_repository_result2.dart';

/// Get infomation about an existing Google Cloud Source Repository.
/// For more information see [the official documentation](https://cloud.google.com/source-repositories)
/// and
/// [API](https://cloud.google.com/source-repositories/docs/reference/rest/v1/projects.repos).
Future<GetRepositoryResult2> getRepository2(
  GetRepositoryArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepository:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult2.fromMap(result);
}
