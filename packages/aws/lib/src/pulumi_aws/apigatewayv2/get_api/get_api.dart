import 'package:pulumi/pulumi.dart';
import 'get_api_args.dart';
import 'get_api_result.dart';

/// Provides details about a specific Amazon API Gateway Version 2 API.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getApi:getApi',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}
