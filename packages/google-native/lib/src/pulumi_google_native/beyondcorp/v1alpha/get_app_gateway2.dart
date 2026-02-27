import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_gateway_args2.dart';
import 'get_app_gateway_result2.dart';

/// Gets details of a single AppGateway.
Future<GetAppGatewayResult2> getAppGateway2(
  GetAppGatewayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayResult2.fromMap(result);
}
