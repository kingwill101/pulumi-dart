import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_args.dart';
import 'get_security_group_result.dart';

/// `aws.ec2.SecurityGroup` provides details about a specific Security Group.
///
/// This resource can prove useful when a module accepts a Security Group id as
/// an input variable and needs to, for example, determine the id of the
/// VPC that the security group belongs to.
///
/// ## Example Usage
///
/// The following example shows how one might accept a Security Group id as a variable
/// and use this data source to obtain the data necessary to create a subnet.
Future<GetSecurityGroupResult> getSecurityGroup(
  GetSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSecurityGroup:getSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupResult.fromMap(result);
}
