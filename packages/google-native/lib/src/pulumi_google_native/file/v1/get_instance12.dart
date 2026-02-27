import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args12.dart';
import 'get_instance_result12.dart';

/// Gets the details of a specific instance.
Future<GetInstanceResult12> getInstance12(
  GetInstanceArgs12 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult12.fromMap(result);
}
