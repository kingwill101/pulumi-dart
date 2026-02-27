import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replay_policysimulator_v1beta1_args.dart';
import 'get_replay_policysimulator_v1beta1_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetReplayPolicysimulatorV1beta1Result> getReplayPolicysimulatorV1beta1(
  GetReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplayPolicysimulatorV1beta1Result.fromMap(result);
}
