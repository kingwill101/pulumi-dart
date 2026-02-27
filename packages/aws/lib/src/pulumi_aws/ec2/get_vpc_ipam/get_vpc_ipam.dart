import 'package:pulumi/pulumi.dart';
import 'get_vpc_ipam_args.dart';
import 'get_vpc_ipam_result.dart';

/// Data source for managing a VPC IPAM.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetVpcIpamResult> getVpcIpam(
  GetVpcIpamArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpam:getVpcIpam',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamResult.fromMap(result);
}
