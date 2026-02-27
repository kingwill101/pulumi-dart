import 'package:pulumi/pulumi.dart';
import 'get_authorization_token_args2.dart';
import 'get_authorization_token_result2.dart';

/// The ECR Authorization Token data source allows the authorization token, proxy endpoint, token expiration date, user name and password to be retrieved for an ECR repository.
Future<GetAuthorizationTokenResult2> getAuthorizationToken2(
  GetAuthorizationTokenArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenResult2.fromMap(result);
}
