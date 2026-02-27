import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_replay_policysimulator_v1beta_args.dart';
import 'get_folder_replay_policysimulator_v1beta_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetFolderReplayPolicysimulatorV1betaResult>
    getFolderReplayPolicysimulatorV1beta(
  GetFolderReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getFolderReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayPolicysimulatorV1betaResult.fromMap(result);
}
