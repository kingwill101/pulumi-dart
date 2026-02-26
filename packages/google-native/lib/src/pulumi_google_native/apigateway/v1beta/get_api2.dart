import 'package:pulumi/pulumi.dart';
import 'get_api_args2.dart';
import 'get_api_result2.dart';

/// Gets details of a single Api.
Future<GetApiResult2> getApi2(
  GetApiArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApi',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiResult2.fromMap(result);
}
