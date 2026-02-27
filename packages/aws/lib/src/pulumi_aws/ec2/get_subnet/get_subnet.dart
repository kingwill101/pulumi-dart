import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_args.dart';
import 'get_subnet_result.dart';

/// `aws.ec2.Subnet` provides details about a specific VPC subnet.
///
/// This resource can prove useful when a module accepts a subnet ID as an input variable and needs to, for example, determine the ID of the VPC that the subnet belongs to.
///
/// ## Example Usage
///
/// The following example shows how one might accept a subnet ID as a variable and use this data source to obtain the data necessary to create a security group that allows connections from hosts in that subnet.
///
///
///
/// ### Filter Example
///
/// If you want to match against tag `Name`, use:
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSubnet:getSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}
