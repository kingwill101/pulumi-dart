import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repo_args.dart';
import 'get_repo_result.dart';

/// Returns information about a repo.
Future<GetRepoResult> getRepo(
  GetRepoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sourcerepo/v1:getRepo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepoResult.fromMap(result);
}
