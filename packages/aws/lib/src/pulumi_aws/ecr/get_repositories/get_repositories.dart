import 'package:pulumi/pulumi.dart';
import 'get_repositories_args.dart';
import 'get_repositories_result.dart';

/// Data source for providing information on AWS ECR (Elastic Container Registry) Repositories.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRepositoriesResult> getRepositories(
  GetRepositoriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepositories:getRepositories',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoriesResult.fromMap(result);
}
