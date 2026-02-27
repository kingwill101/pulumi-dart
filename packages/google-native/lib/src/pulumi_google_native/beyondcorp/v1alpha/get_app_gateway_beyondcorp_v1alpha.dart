import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_gateway_beyondcorp_v1alpha_args.dart';
import 'get_app_gateway_beyondcorp_v1alpha_result.dart';

/// Gets details of a single AppGateway.
Future<GetAppGatewayBeyondcorpV1alphaResult> getAppGatewayBeyondcorpV1alpha(
  GetAppGatewayBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayBeyondcorpV1alphaResult.fromMap(result);
}
