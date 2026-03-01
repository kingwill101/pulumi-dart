import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mongo_instances_args.dart';
import 'get_mongo_instances_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_dds_get_mongo_instances_get_mongo_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoInstancesResult> getMongoInstances(
  GetMongoInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dds/getMongoInstances:getMongoInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoInstancesResult.fromMap(result);
}
