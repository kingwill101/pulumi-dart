import 'package:pulumi/pulumi.dart';
import 'get_instance_args6.dart';
import 'get_instance_result6.dart';

/// Gets information about an instance.
Future<GetInstanceResult6> getInstance6(
  GetInstanceArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult6.fromMap(result);
}
