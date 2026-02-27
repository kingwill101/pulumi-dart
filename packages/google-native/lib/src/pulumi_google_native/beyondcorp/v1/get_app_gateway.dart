import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_gateway_args.dart';
import 'get_app_gateway_result.dart';

/// Gets details of a single AppGateway.
Future<GetAppGatewayResult> getAppGateway(
  GetAppGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayResult.fromMap(result);
}
