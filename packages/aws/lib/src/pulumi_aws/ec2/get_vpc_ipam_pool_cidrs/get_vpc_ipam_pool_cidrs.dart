import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pool_cidrs_args.dart';
import 'get_vpc_ipam_pool_cidrs_result.dart';

/// `aws.ec2.getVpcIpamPoolCidrs` provides details about an IPAM pool.
///
/// This resource can prove useful when an ipam pool was shared to your account and you want to know all (or a filtered list) of the CIDRs that are provisioned into the pool.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// Filtering:
Future<GetVpcIpamPoolCidrsResult> getVpcIpamPoolCidrs(
  GetVpcIpamPoolCidrsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPoolCidrs:getVpcIpamPoolCidrs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolCidrsResult.fromMap(result);
}
