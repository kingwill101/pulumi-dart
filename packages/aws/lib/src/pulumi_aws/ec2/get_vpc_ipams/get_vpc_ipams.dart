import 'package:pulumi/pulumi.dart';
import 'get_vpc_ipams_args.dart';
import 'get_vpc_ipams_result.dart';

/// Data source for managing VPC IPAMs.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter by `tags`
///
///
///
/// ### Filter by `tier`
Future<GetVpcIpamsResult> getVpcIpams(
  GetVpcIpamsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpams:getVpcIpams',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamsResult.fromMap(result);
}
