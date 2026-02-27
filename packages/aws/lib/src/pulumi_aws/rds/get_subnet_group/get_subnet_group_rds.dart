import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_group_rds_args.dart';
import 'get_subnet_group_rds_result.dart';

/// Use this data source to get information about an RDS subnet group.
Future<GetSubnetGroupRdsResult> getSubnetGroupRds(
  GetSubnetGroupRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupRdsResult.fromMap(result);
}
