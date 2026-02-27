import 'package:pulumi/pulumi.dart' hide Config;
import 'get_repository_args3.dart';
import 'get_repository_result3.dart';

/// Gets a repository.
Future<GetRepositoryResult3> getRepository3(
  GetRepositoryArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult3.fromMap(result);
}
