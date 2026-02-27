import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_pool_args3.dart';
import 'get_target_pool_result3.dart';

/// Returns the specified target pool.
Future<GetTargetPoolResult3> getTargetPool3(
  GetTargetPoolArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolResult3.fromMap(result);
}
