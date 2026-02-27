import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orderable_db_instance_args.dart';
import 'get_orderable_db_instance_result.dart';

/// Information about DocumentDB orderable DB instances.
Future<GetOrderableDbInstanceResult> getOrderableDbInstance(
  GetOrderableDbInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:docdb/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult.fromMap(result);
}
