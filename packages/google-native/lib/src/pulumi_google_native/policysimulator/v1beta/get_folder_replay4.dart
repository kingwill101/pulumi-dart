import 'package:pulumi/pulumi.dart';
import 'get_folder_replay_args4.dart';
import 'get_folder_replay_result4.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetFolderReplayResult4> getFolderReplay4(
  GetFolderReplayArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getFolderReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayResult4.fromMap(result);
}
