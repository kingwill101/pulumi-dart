import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorizers_args.dart';
import 'get_authorizers_result.dart';

/// Provides details about multiple API Gateway Authorizers.
Future<GetAuthorizersResult> getAuthorizers(
  GetAuthorizersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizers:getAuthorizers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizersResult.fromMap(result);
}
