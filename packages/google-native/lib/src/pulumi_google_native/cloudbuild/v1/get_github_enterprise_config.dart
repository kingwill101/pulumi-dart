import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_github_enterprise_config_args.dart';
import 'get_github_enterprise_config_result.dart';

/// Retrieve a GitHubEnterpriseConfig.
Future<GetGithubEnterpriseConfigResult> getGithubEnterpriseConfig(
  GetGithubEnterpriseConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getGithubEnterpriseConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGithubEnterpriseConfigResult.fromMap(result);
}
