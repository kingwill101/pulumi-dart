import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multicast_domain_args.dart';
import 'get_multicast_domain_result.dart';

/// Get information on an EC2 Transit Gateway Multicast Domain.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetMulticastDomainResult> getMulticastDomain(
  GetMulticastDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getMulticastDomain:getMulticastDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMulticastDomainResult.fromMap(result);
}
