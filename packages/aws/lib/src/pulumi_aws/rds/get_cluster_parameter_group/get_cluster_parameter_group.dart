import 'package:pulumi/pulumi.dart';
import 'get_cluster_parameter_group_args.dart';
import 'get_cluster_parameter_group_result.dart';

/// Information about an RDS cluster parameter group.
Future<GetClusterParameterGroupResult> getClusterParameterGroup(
  GetClusterParameterGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusterParameterGroup:getClusterParameterGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterParameterGroupResult.fromMap(result);
}
