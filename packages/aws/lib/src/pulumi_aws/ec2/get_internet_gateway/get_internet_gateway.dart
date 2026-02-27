import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_internet_gateway_args.dart';
import 'get_internet_gateway_result.dart';

/// `aws.ec2.InternetGateway` provides details about a specific Internet Gateway.
Future<GetInternetGatewayResult> getInternetGateway(
  GetInternetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInternetGateway:getInternetGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternetGatewayResult.fromMap(result);
}
