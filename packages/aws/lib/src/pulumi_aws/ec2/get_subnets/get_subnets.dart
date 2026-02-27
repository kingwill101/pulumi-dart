import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnets_args.dart';
import 'get_subnets_result.dart';

/// This resource can be useful for getting back a set of subnet IDs.
///
/// ## Example Usage
///
/// The following shows outputting all CIDR blocks for every subnet ID in a VPC.
///
///
///
/// The following example retrieves a set of all subnets in a VPC with a custom
/// tag of `Tier` set to a value of "Private" so that the `aws.ec2.Instance` resource
/// can loop through the subnets, putting instances across availability zones.
Future<GetSubnetsResult> getSubnets(
  GetSubnetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSubnets:getSubnets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetsResult.fromMap(result);
}
