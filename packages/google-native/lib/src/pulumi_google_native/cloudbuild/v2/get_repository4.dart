import 'package:pulumi/pulumi.dart';
import 'get_repository_args4.dart';
import 'get_repository_result4.dart';

/// Gets details of a single repository.
Future<GetRepositoryResult4> getRepository4(
  GetRepositoryArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult4.fromMap(result);
}
