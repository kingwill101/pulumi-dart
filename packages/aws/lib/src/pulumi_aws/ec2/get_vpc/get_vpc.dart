import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_args.dart';
import 'get_vpc_result.dart';

/// `aws.ec2.Vpc` provides details about a specific VPC.
///
/// This resource can prove useful when a module accepts a vpc id as
/// an input variable and needs to, for example, determine the CIDR block of that
/// VPC.
///
/// ## Example Usage
///
/// The following example shows how one might accept a VPC id as a variable
/// and use this data source to obtain the data necessary to create a subnet
/// within it.
Future<GetVpcResult> getVpc(
  GetVpcArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpc:getVpc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcResult.fromMap(result);
}
