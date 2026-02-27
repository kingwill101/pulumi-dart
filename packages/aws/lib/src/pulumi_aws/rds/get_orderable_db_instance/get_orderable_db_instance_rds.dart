import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orderable_db_instance_rds_args.dart';
import 'get_orderable_db_instance_rds_result.dart';

/// Information about RDS orderable DB instances and valid parameter combinations.
///
/// ## Example Usage
///
///
///
/// Valid parameter combinations can also be found with `preferred_engine_versions` and/or `preferred_instance_classes`.
Future<GetOrderableDbInstanceRdsResult> getOrderableDbInstanceRds(
  GetOrderableDbInstanceRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceRdsResult.fromMap(result);
}
