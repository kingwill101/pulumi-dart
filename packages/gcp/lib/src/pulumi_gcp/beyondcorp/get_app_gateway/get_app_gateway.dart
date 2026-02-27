import 'package:pulumi/pulumi.dart';
import 'get_app_gateway_args.dart';
import 'get_app_gateway_result.dart';

/// Get information about a Google BeyondCorp App Gateway.
Future<GetAppGatewayResult> getAppGateway(
  GetAppGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppGateway:getAppGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayResult.fromMap(result);
}
