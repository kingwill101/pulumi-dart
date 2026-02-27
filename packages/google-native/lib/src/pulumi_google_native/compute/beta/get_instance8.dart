import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args8.dart';
import 'get_instance_result8.dart';

/// Returns the specified Instance resource.
Future<GetInstanceResult8> getInstance8(
  GetInstanceArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult8.fromMap(result);
}
