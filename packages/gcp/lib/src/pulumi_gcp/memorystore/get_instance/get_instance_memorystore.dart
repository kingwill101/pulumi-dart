import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_memorystore_args.dart';
import 'get_instance_memorystore_result.dart';

/// Use this data source to get information about the available instance. For more details refer the [API docs](https://cloud.google.com/memorystore/docs/valkey/reference/rest/v1/projects.locations.instances).
Future<GetInstanceMemorystoreResult> getInstanceMemorystore(
  GetInstanceMemorystoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:memorystore/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceMemorystoreResult.fromMap(result);
}
