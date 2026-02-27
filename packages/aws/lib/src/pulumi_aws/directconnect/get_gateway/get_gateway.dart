import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_args.dart';
import 'get_gateway_result.dart';

/// Retrieve information about a Direct Connect Gateway.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getGateway:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}
