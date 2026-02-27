import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_group_rds_args.dart';
import 'get_parameter_group_rds_result.dart';

/// Information about a database parameter group.
Future<GetParameterGroupRdsResult> getParameterGroupRds(
  GetParameterGroupRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getParameterGroup:getParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterGroupRdsResult.fromMap(result);
}
