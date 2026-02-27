import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_instance_args.dart';
import 'get_replication_instance_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Replication Instance.
Future<GetReplicationInstanceResult> getReplicationInstance(
  GetReplicationInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationInstance:getReplicationInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationInstanceResult.fromMap(result);
}
