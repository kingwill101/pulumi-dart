import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args2.dart';
import 'get_instance_result2.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult2> getInstance2(
  GetInstanceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult2.fromMap(result);
}
