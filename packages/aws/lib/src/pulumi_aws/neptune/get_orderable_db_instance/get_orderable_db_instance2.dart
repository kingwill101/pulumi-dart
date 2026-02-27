import 'package:pulumi/pulumi.dart';
import 'get_orderable_db_instance_args2.dart';
import 'get_orderable_db_instance_result2.dart';

/// Information about Neptune orderable DB instances.
Future<GetOrderableDbInstanceResult2> getOrderableDbInstance2(
  GetOrderableDbInstanceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult2.fromMap(result);
}
