import 'package:pulumi/pulumi.dart';
import 'get_repository_args.dart';
import 'get_repository_result.dart';

/// Gets a repository.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}
