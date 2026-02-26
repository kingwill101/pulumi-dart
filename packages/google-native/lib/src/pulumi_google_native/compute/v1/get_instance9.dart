import 'package:pulumi/pulumi.dart';
import 'get_instance_args9.dart';
import 'get_instance_result9.dart';

/// Returns the specified Instance resource.
Future<GetInstanceResult9> getInstance9(
  GetInstanceArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult9.fromMap(result);
}
