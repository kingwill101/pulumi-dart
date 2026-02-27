import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_rds_args.dart';
import 'get_instances_rds_result.dart';

/// Data source for listing RDS Database Instances.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Using tags
Future<GetInstancesRdsResult> getInstancesRds(
  GetInstancesRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesRdsResult.fromMap(result);
}
