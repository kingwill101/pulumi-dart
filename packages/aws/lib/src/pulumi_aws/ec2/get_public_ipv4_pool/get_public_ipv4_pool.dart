import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ipv4_pool_args.dart';
import 'get_public_ipv4_pool_result.dart';

/// Provides details about a specific AWS EC2 Public IPv4 Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPublicIpv4PoolResult> getPublicIpv4Pool(
  GetPublicIpv4PoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getPublicIpv4Pool:getPublicIpv4Pool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIpv4PoolResult.fromMap(result);
}
