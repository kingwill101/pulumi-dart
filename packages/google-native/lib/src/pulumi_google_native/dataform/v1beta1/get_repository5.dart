import 'package:pulumi/pulumi.dart' hide Config;
import 'get_repository_args5.dart';
import 'get_repository_result5.dart';

/// Fetches a single Repository.
Future<GetRepositoryResult5> getRepository5(
  GetRepositoryArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult5.fromMap(result);
}
