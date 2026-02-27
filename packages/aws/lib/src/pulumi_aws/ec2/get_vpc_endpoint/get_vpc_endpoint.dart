import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_args.dart';
import 'get_vpc_endpoint_result.dart';

/// The VPC Endpoint data source provides details about
/// a specific VPC endpoint.
Future<GetVpcEndpointResult> getVpcEndpoint(
  GetVpcEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcEndpoint:getVpcEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointResult.fromMap(result);
}
