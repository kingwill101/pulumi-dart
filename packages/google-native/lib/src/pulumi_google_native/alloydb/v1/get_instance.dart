import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}
