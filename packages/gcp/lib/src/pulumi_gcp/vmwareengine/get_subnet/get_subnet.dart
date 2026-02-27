import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_args.dart';
import 'get_subnet_result.dart';

/// Use this data source to get details about a subnet. Management subnets support only read operations and should be configured through this data source. User defined subnets can be configured using the resource as well as the datasource.
///
/// To get more information about private cloud subnet, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.subnets)
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getSubnet:getSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}
