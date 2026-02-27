import 'package:pulumi/pulumi.dart';
import 'get_public_ipv4_pools_args.dart';
import 'get_public_ipv4_pools_result.dart';

/// Data source for getting information about AWS EC2 Public IPv4 Pools.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with Filter
Future<GetPublicIpv4PoolsResult> getPublicIpv4Pools(
  GetPublicIpv4PoolsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getPublicIpv4Pools:getPublicIpv4Pools',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPublicIpv4PoolsResult.fromMap(result);
}
