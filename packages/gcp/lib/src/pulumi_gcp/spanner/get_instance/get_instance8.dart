import 'package:pulumi/pulumi.dart';
import 'get_instance_args8.dart';
import 'get_instance_result8.dart';

/// Get a spanner instance from Google Cloud by its name.
Future<GetInstanceResult8> getInstance8(
  GetInstanceArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult8.fromMap(result);
}
