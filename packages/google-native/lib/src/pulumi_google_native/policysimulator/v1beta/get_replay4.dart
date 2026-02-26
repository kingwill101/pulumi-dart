import 'package:pulumi/pulumi.dart';
import 'get_replay_args4.dart';
import 'get_replay_result4.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetReplayResult4> getReplay4(
  GetReplayArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplayResult4.fromMap(result);
}
