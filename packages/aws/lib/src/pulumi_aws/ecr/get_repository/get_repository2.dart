import 'package:pulumi/pulumi.dart';
import 'get_repository_args2.dart';
import 'get_repository_result2.dart';

/// The ECR Repository data source allows the ARN, Repository URI and Registry ID to be retrieved for an ECR repository.
Future<GetRepositoryResult2> getRepository2(
  GetRepositoryArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepository:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult2.fromMap(result);
}
