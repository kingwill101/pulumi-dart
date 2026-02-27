import 'package:pulumi/pulumi.dart' hide Config;
import 'get_api_args.dart';
import 'get_api_result.dart';

/// Gets details of a single Api.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1:getApi',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}
