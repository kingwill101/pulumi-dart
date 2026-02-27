import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args16.dart';
import 'get_instance_result16.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult16> getInstance16(
  GetInstanceArgs16 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:memcache/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult16.fromMap(result);
}
