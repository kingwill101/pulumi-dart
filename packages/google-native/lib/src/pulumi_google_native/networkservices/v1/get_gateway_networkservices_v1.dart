import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_networkservices_v1_args.dart';
import 'get_gateway_networkservices_v1_result.dart';

/// Gets details of a single Gateway.
Future<GetGatewayNetworkservicesV1Result> getGatewayNetworkservicesV1(
  GetGatewayNetworkservicesV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayNetworkservicesV1Result.fromMap(result);
}
