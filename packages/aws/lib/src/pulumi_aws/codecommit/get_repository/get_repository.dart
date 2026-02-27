import 'package:pulumi/pulumi.dart';
import 'get_repository_args.dart';
import 'get_repository_result.dart';

/// The CodeCommit Repository data source allows the ARN, Repository ID, Repository URL for HTTP and Repository URL for SSH to be retrieved for an CodeCommit repository.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codecommit/getRepository:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}
