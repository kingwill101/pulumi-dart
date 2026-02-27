import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_vpc_endpoint_args.dart';
import 'get_serverless_vpc_endpoint_result.dart';

/// Data source for managing an AWS OpenSearch Serverless VPC Endpoint.
Future<GetServerlessVpcEndpointResult> getServerlessVpcEndpoint(
  GetServerlessVpcEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessVpcEndpoint:getServerlessVpcEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessVpcEndpointResult.fromMap(result);
}
