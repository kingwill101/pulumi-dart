import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_token_ecrpublic_args.dart';
import 'get_authorization_token_ecrpublic_result.dart';

/// The Public ECR Authorization Token data source allows the authorization token, token expiration date, user name, and password to be retrieved for a Public ECR repository.
///
/// > **NOTE:** This data source can only be used in the `us-east-1` region.
Future<GetAuthorizationTokenEcrpublicResult> getAuthorizationTokenEcrpublic(
  GetAuthorizationTokenEcrpublicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecrpublic/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenEcrpublicResult.fromMap(result);
}
