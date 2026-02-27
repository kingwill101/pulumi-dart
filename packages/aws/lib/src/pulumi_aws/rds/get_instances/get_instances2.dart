import 'package:pulumi/pulumi.dart';
import 'get_instances_args2.dart';
import 'get_instances_result2.dart';

/// Data source for listing RDS Database Instances.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Using tags
Future<GetInstancesResult2> getInstances2(
  GetInstancesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getInstances:getInstances',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult2.fromMap(result);
}
