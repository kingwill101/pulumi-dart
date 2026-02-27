import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_args20.dart';
import 'get_instance_result20.dart';

/// Gets the details of a specific Redis instance.
Future<GetInstanceResult20> getInstance20(
  GetInstanceArgs20 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:redis/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult20.fromMap(result);
}
