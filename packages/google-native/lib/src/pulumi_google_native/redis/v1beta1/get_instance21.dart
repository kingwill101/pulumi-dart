import 'package:pulumi/pulumi.dart';
import 'get_instance_args21.dart';
import 'get_instance_result21.dart';

/// Gets the details of a specific Redis instance.
Future<GetInstanceResult21> getInstance21(
  GetInstanceArgs21 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1beta1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult21.fromMap(result);
}
