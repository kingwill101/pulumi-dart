import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_endpoint_args.dart';
import 'get_resolver_endpoint_result.dart';

/// `aws.route53.ResolverEndpoint` provides details about a specific Route53 Resolver Endpoint.
///
/// This data source allows to find a list of IPaddresses associated with a specific Route53 Resolver Endpoint.
Future<GetResolverEndpointResult> getResolverEndpoint(
  GetResolverEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverEndpoint:getResolverEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolverEndpointResult.fromMap(result);
}
