import 'package:pulumi/pulumi.dart';
import 'get_authorizer_args.dart';
import 'get_authorizer_result.dart';

/// Provides details about a specific API Gateway Authorizer.
Future<GetAuthorizerResult> getAuthorizer(
  GetAuthorizerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizer:getAuthorizer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizerResult.fromMap(result);
}
