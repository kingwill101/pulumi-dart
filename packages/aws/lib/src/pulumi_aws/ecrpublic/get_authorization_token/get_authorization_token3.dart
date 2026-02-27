import 'package:pulumi/pulumi.dart';
import 'get_authorization_token_args3.dart';
import 'get_authorization_token_result3.dart';

/// The Public ECR Authorization Token data source allows the authorization token, token expiration date, user name, and password to be retrieved for a Public ECR repository.
///
/// > **NOTE:** This data source can only be used in the `us-east-1` region.
Future<GetAuthorizationTokenResult3> getAuthorizationToken3(
  GetAuthorizationTokenArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecrpublic/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenResult3.fromMap(result);
}
