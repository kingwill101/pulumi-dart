import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_ecr_args.dart';
import 'get_repository_ecr_result.dart';

/// The ECR Repository data source allows the ARN, Repository URI and Registry ID to be retrieved for an ECR repository.
Future<GetRepositoryEcrResult> getRepositoryEcr(
  GetRepositoryEcrArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepository:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryEcrResult.fromMap(result);
}
