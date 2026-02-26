import 'package:pulumi/pulumi.dart';
import 'get_instance_args22.dart';
import 'get_instance_result22.dart';

/// Returns the specified instance.
Future<GetInstanceResult22> getInstance22(
  GetInstanceArgs22 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:remotebuildexecution/v1alpha:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult22.fromMap(result);
}
