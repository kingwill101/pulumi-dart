import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_token_args.dart';
import 'get_authorization_token_result.dart';

/// The CodeArtifact Authorization Token data source generates a temporary authentication token for accessing repositories in a CodeArtifact domain.
Future<GetAuthorizationTokenResult> getAuthorizationToken(
  GetAuthorizationTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codeartifact/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenResult.fromMap(result);
}
