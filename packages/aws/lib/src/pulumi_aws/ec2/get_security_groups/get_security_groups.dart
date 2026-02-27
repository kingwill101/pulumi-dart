import 'package:pulumi/pulumi.dart';
import 'get_security_groups_args.dart';
import 'get_security_groups_result.dart';

/// Use this data source to get IDs and VPC membership of Security Groups that are created outside this provider.
Future<GetSecurityGroupsResult> getSecurityGroups(
  GetSecurityGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSecurityGroups:getSecurityGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupsResult.fromMap(result);
}
