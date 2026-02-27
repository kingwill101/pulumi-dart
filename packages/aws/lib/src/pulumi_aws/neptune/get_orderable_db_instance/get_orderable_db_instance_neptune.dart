import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orderable_db_instance_neptune_args.dart';
import 'get_orderable_db_instance_neptune_result.dart';

/// Information about Neptune orderable DB instances.
Future<GetOrderableDbInstanceNeptuneResult> getOrderableDbInstanceNeptune(
  GetOrderableDbInstanceNeptuneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceNeptuneResult.fromMap(result);
}
