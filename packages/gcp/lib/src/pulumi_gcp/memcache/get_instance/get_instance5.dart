import 'package:pulumi/pulumi.dart';
import 'get_instance_args5.dart';
import 'get_instance_result5.dart';

/// Use this data source to get information about the available instance. For more details refer the [API docs](https://cloud.google.com/memorystore/docs/memcached/reference/rest/v1/projects.locations.instances).
Future<GetInstanceResult5> getInstance5(
  GetInstanceArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:memcache/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult5.fromMap(result);
}
