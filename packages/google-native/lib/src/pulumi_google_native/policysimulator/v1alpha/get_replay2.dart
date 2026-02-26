import 'package:pulumi/pulumi.dart';
import 'get_replay_args2.dart';
import 'get_replay_result2.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetReplayResult2> getReplay2(
  GetReplayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplayResult2.fromMap(result);
}
