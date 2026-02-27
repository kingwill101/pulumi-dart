import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_group_memorydb_args.dart';
import 'get_subnet_group_memorydb_result.dart';

/// Provides information about a MemoryDB Subnet Group.
Future<GetSubnetGroupMemorydbResult> getSubnetGroupMemorydb(
  GetSubnetGroupMemorydbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupMemorydbResult.fromMap(result);
}
