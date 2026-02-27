import 'package:pulumi/pulumi.dart' hide Config;
import 'get_repo_args.dart';
import 'get_repo_result.dart';

/// Returns information about a repo.
Future<GetRepoResult> getRepo(
  GetRepoArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sourcerepo/v1:getRepo',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepoResult.fromMap(result);
}
