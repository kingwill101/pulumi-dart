import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args18.dart';
import 'get_instance_result18.dart';

/// Gets details of a single Instance.
Future<GetInstanceResult18> getInstance18(
  GetInstanceArgs18 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult18.fromMap(result);
}
