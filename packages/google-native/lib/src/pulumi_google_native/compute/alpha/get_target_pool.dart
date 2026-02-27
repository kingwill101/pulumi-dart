import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_pool_args.dart';
import 'get_target_pool_result.dart';

/// Returns the specified target pool.
Future<GetTargetPoolResult> getTargetPool(
  GetTargetPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolResult.fromMap(result);
}
