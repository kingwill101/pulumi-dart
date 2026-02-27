import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_pool_args2.dart';
import 'get_target_pool_result2.dart';

/// Returns the specified target pool.
Future<GetTargetPoolResult2> getTargetPool2(
  GetTargetPoolArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolResult2.fromMap(result);
}
