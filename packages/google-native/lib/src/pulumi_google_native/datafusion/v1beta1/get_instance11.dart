import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args11.dart';
import 'get_instance_result11.dart';

/// Gets details of a single Data Fusion instance.
Future<GetInstanceResult11> getInstance11(
  GetInstanceArgs11 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult11.fromMap(result);
}
