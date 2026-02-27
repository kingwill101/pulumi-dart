import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_lustre_args.dart';
import 'get_instance_lustre_result.dart';

/// Use this data source to get information about a Lustre instance. For more information see the [API docs](https://cloud.google.com/filestore/docs/lustre/reference/rest/v1/projects.locations.instances).
Future<GetInstanceLustreResult> getInstanceLustre(
  GetInstanceLustreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:lustre/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceLustreResult.fromMap(result);
}
