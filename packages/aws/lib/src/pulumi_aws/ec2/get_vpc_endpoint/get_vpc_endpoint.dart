import 'package:pulumi/pulumi.dart';
import 'get_vpc_endpoint_args.dart';
import 'get_vpc_endpoint_result.dart';

/// The VPC Endpoint data source provides details about
/// a specific VPC endpoint.
Future<GetVpcEndpointResult> getVpcEndpoint(
  GetVpcEndpointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcEndpoint:getVpcEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointResult.fromMap(result);
}
