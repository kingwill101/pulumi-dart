import 'package:pulumi/pulumi.dart';
import 'get_subnet_group_args.dart';
import 'get_subnet_group_result.dart';

/// Provides information about a ElastiCache Subnet Group.
Future<GetSubnetGroupResult> getSubnetGroup(
  GetSubnetGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult.fromMap(result);
}
