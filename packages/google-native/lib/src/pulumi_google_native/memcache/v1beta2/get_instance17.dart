import 'package:pulumi/pulumi.dart';
import 'get_instance_args17.dart';
import 'get_instance_result17.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult17> getInstance17(
  GetInstanceArgs17 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:memcache/v1beta2:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult17.fromMap(result);
}
