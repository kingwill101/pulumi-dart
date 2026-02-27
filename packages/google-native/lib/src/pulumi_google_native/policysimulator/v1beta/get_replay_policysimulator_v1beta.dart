import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replay_policysimulator_v1beta_args.dart';
import 'get_replay_policysimulator_v1beta_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetReplayPolicysimulatorV1betaResult> getReplayPolicysimulatorV1beta(
  GetReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplayPolicysimulatorV1betaResult.fromMap(result);
}
