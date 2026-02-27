import 'package:pulumi/pulumi.dart';
import 'get_subnet_group_args2.dart';
import 'get_subnet_group_result2.dart';

/// Provides information about a MemoryDB Subnet Group.
Future<GetSubnetGroupResult2> getSubnetGroup2(
  GetSubnetGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult2.fromMap(result);
}
