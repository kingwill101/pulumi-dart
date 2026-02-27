import 'package:pulumi/pulumi.dart';
import 'get_orderable_db_instance_args3.dart';
import 'get_orderable_db_instance_result3.dart';

/// Information about RDS orderable DB instances and valid parameter combinations.
///
/// ## Example Usage
///
///
///
/// Valid parameter combinations can also be found with `preferred_engine_versions` and/or `preferred_instance_classes`.
Future<GetOrderableDbInstanceResult3> getOrderableDbInstance3(
  GetOrderableDbInstanceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult3.fromMap(result);
}
