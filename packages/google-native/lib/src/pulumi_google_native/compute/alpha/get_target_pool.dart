import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_pool_args.dart';
import 'get_target_pool_result.dart';

/// Returns the specified target pool.
Future<GetTargetPoolResult> getTargetPool(
  GetTargetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolResult.fromMap(result);
}
