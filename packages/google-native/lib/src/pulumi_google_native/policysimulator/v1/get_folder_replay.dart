import 'package:pulumi/pulumi.dart' hide Config;
import 'get_folder_replay_args.dart';
import 'get_folder_replay_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetFolderReplayResult> getFolderReplay(
  GetFolderReplayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getFolderReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayResult.fromMap(result);
}
