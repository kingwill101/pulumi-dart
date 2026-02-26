import 'package:pulumi/pulumi.dart';
import 'get_instance_args15.dart';
import 'get_instance_result15.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult15> getInstance15(
  GetInstanceArgs15 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:looker/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult15.fromMap(result);
}
