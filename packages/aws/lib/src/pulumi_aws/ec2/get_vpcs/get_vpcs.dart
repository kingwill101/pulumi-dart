import 'package:pulumi/pulumi.dart';
import 'get_vpcs_args.dart';
import 'get_vpcs_result.dart';

/// This resource can be useful for getting back a list of VPC Ids for a region.
///
/// The following example retrieves a list of VPC Ids with a custom tag of `service` set to a value of "production".
///
/// ## Example Usage
///
/// The following shows outputting all VPC Ids.
///
///
///
/// An example use case would be interpolate the `aws.ec2.getVpcs` output into `count` of an aws.ec2.FlowLog resource.
Future<GetVpcsResult> getVpcs(
  GetVpcsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcs:getVpcs',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcsResult.fromMap(result);
}
