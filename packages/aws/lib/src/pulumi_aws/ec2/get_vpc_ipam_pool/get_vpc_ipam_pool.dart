import 'package:pulumi/pulumi.dart';
import 'get_vpc_ipam_pool_args.dart';
import 'get_vpc_ipam_pool_result.dart';

/// `aws.ec2.VpcIpamPool` provides details about an IPAM pool.
///
/// This resource can prove useful when an ipam pool was created in another root
/// module and you need the pool's id as an input variable. For example, pools
/// can be shared via RAM and used to create vpcs with CIDRs from that pool.
///
/// ## Example Usage
///
/// The following example shows an account that has only 1 pool, perhaps shared
/// via RAM, and using that pool id to create a VPC with a CIDR derived from
/// AWS IPAM.
Future<GetVpcIpamPoolResult> getVpcIpamPool(
  GetVpcIpamPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPool:getVpcIpamPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolResult.fromMap(result);
}
