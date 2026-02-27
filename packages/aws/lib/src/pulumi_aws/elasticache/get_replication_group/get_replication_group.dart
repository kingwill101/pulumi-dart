import 'package:pulumi/pulumi.dart';
import 'get_replication_group_args.dart';
import 'get_replication_group_result.dart';

/// Use this data source to get information about an ElastiCache Replication Group.
Future<GetReplicationGroupResult> getReplicationGroup(
  GetReplicationGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getReplicationGroup:getReplicationGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplicationGroupResult.fromMap(result);
}
