import 'package:pulumi/pulumi.dart';
import 'get_instance_args10.dart';
import 'get_instance_result10.dart';

/// Gets details of a single Data Fusion instance.
Future<GetInstanceResult10> getInstance10(
  GetInstanceArgs10 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult10.fromMap(result);
}
