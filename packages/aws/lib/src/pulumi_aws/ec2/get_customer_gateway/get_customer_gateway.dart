import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_customer_gateway_args.dart';
import 'get_customer_gateway_result.dart';

/// Get an existing AWS Customer Gateway.
Future<GetCustomerGatewayResult> getCustomerGateway(
  GetCustomerGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCustomerGateway:getCustomerGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomerGatewayResult.fromMap(result);
}
