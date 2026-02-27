import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_group_args.dart';
import 'get_subnet_group_result.dart';

/// Provides information about a ElastiCache Subnet Group.
Future<GetSubnetGroupResult> getSubnetGroup(
  GetSubnetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult.fromMap(result);
}
