import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_git_lab_config_args.dart';
import 'get_git_lab_config_result.dart';

/// Retrieves a `GitLabConfig`. This API is experimental
Future<GetGitLabConfigResult> getGitLabConfig(
  GetGitLabConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getGitLabConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGitLabConfigResult.fromMap(result);
}
