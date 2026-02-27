import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_token_ecr_args.dart';
import 'get_authorization_token_ecr_result.dart';

/// The ECR Authorization Token data source allows the authorization token, proxy endpoint, token expiration date, user name and password to be retrieved for an ECR repository.
Future<GetAuthorizationTokenEcrResult> getAuthorizationTokenEcr(
  GetAuthorizationTokenEcrArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenEcrResult.fromMap(result);
}
