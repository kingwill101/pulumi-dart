import 'package:pulumi/pulumi.dart';
import 'get_customer_gateway_args.dart';
import 'get_customer_gateway_result.dart';

/// Get an existing AWS Customer Gateway.
Future<GetCustomerGatewayResult> getCustomerGateway(
  GetCustomerGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCustomerGateway:getCustomerGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomerGatewayResult.fromMap(result);
}
