import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_replay_policysimulator_v1alpha_args.dart';
import 'get_folder_replay_policysimulator_v1alpha_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetFolderReplayPolicysimulatorV1alphaResult>
    getFolderReplayPolicysimulatorV1alpha(
  GetFolderReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getFolderReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayPolicysimulatorV1alphaResult.fromMap(result);
}
