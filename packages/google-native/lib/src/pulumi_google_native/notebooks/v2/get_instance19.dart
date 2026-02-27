import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args19.dart';
import 'get_instance_result19.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult19> getInstance19(
  GetInstanceArgs19 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v2:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult19.fromMap(result);
}
