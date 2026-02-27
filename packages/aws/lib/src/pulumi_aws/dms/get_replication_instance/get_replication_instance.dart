import 'package:pulumi/pulumi.dart';
import 'get_replication_instance_args.dart';
import 'get_replication_instance_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Replication Instance.
Future<GetReplicationInstanceResult> getReplicationInstance(
  GetReplicationInstanceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationInstance:getReplicationInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplicationInstanceResult.fromMap(result);
}
