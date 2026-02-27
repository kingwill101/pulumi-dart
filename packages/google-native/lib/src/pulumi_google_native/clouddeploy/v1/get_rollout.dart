import 'package:pulumi/pulumi.dart' hide Config;
import 'get_rollout_args.dart';
import 'get_rollout_result.dart';

/// Gets details of a single Rollout.
Future<GetRolloutResult> getRollout(
  GetRolloutArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getRollout',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRolloutResult.fromMap(result);
}
