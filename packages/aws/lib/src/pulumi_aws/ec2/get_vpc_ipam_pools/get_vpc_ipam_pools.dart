import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pools_args.dart';
import 'get_vpc_ipam_pools_result.dart';

/// `aws.ec2.getVpcIpamPools` provides details about IPAM pools.
///
/// This resource can prove useful when IPAM pools are created in another root
/// module and you need the pool ids as input variables. For example, pools
/// can be shared via RAM and used to create vpcs with CIDRs from that pool.
Future<GetVpcIpamPoolsResult> getVpcIpamPools(
  GetVpcIpamPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPools:getVpcIpamPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolsResult.fromMap(result);
}
