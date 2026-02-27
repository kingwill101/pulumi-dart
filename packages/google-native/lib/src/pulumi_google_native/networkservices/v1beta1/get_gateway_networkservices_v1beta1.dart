import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_networkservices_v1beta1_args.dart';
import 'get_gateway_networkservices_v1beta1_result.dart';

/// Gets details of a single Gateway.
Future<GetGatewayNetworkservicesV1beta1Result> getGatewayNetworkservicesV1beta1(
  GetGatewayNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayNetworkservicesV1beta1Result.fromMap(result);
}
