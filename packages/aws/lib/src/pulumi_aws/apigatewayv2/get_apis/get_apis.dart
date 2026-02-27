import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apis_args.dart';
import 'get_apis_result.dart';

/// Provides details about multiple Amazon API Gateway Version 2 APIs.
Future<GetApisResult> getApis(
  GetApisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getApis:getApis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApisResult.fromMap(result);
}
