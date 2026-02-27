import 'package:pulumi/pulumi.dart' hide Config;
import 'get_replay_args.dart';
import 'get_replay_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetReplayResult> getReplay(
  GetReplayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplayResult.fromMap(result);
}
