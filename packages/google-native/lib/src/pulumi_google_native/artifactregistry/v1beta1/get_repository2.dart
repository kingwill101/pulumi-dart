import 'package:pulumi/pulumi.dart' hide Config;
import 'get_repository_args2.dart';
import 'get_repository_result2.dart';

/// Gets a repository.
Future<GetRepositoryResult2> getRepository2(
  GetRepositoryArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult2.fromMap(result);
}
