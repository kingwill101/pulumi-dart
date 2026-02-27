import 'package:pulumi/pulumi.dart';
import 'get_instance_args6.dart';
import 'get_instance_result6.dart';

/// Use this data source to get information about the available instance. For more details refer the [API docs](https://cloud.google.com/memorystore/docs/valkey/reference/rest/v1/projects.locations.instances).
Future<GetInstanceResult6> getInstance6(
  GetInstanceArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:memorystore/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult6.fromMap(result);
}
