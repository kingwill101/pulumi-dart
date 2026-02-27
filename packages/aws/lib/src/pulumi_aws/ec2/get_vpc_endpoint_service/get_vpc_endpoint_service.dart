import 'package:pulumi/pulumi.dart';
import 'get_vpc_endpoint_service_args.dart';
import 'get_vpc_endpoint_service_result.dart';

/// The VPC Endpoint Service data source details about a specific service that
/// can be specified when creating a VPC endpoint within the region configured in the provider.
///
/// ## Example Usage
///
/// ### AWS Service
///
///
///
/// ### Non-AWS Service
///
///
///
/// ### Filter
Future<GetVpcEndpointServiceResult> getVpcEndpointService(
  GetVpcEndpointServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcEndpointService:getVpcEndpointService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointServiceResult.fromMap(result);
}
