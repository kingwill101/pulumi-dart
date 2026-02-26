import 'package:pulumi/pulumi.dart';
import 'get_rollout_args2.dart';
import 'get_rollout_result2.dart';

/// Gets a service configuration rollout.
Future<GetRolloutResult2> getRollout2(
  GetRolloutArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getRollout',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRolloutResult2.fromMap(result);
}
