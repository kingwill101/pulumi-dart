import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rollout_args.dart';
import 'get_rollout_result.dart';

/// Gets details of a single Rollout.
Future<GetRolloutResult> getRollout(
  GetRolloutArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolloutResult.fromMap(result);
}
