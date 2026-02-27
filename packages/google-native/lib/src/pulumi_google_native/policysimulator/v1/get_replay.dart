import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replay_args.dart';
import 'get_replay_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetReplayResult> getReplay(
  GetReplayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplayResult.fromMap(result);
}
