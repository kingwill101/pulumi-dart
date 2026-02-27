import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_subnet_group_args.dart';
import 'get_replication_subnet_group_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Replication Subnet Group.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetReplicationSubnetGroupResult> getReplicationSubnetGroup(
  GetReplicationSubnetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationSubnetGroup:getReplicationSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationSubnetGroupResult.fromMap(result);
}
