import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_parameter_group_args.dart';
import 'get_cluster_parameter_group_result.dart';

/// Information about an RDS cluster parameter group.
Future<GetClusterParameterGroupResult> getClusterParameterGroup(
  GetClusterParameterGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusterParameterGroup:getClusterParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterParameterGroupResult.fromMap(result);
}
