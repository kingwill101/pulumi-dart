import 'package:pulumi/pulumi.dart' hide Config;
import 'get_replay_args3.dart';
import 'get_replay_result3.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetReplayResult3> getReplay3(
  GetReplayArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReplayResult3.fromMap(result);
}
