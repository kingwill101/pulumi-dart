import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_replay_policysimulator_v1beta1_args.dart';
import 'get_folder_replay_policysimulator_v1beta1_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetFolderReplayPolicysimulatorV1beta1Result>
    getFolderReplayPolicysimulatorV1beta1(
  GetFolderReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getFolderReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayPolicysimulatorV1beta1Result.fromMap(result);
}
