import 'package:pulumi/pulumi.dart' hide Config;
import 'get_folder_replay_args2.dart';
import 'get_folder_replay_result2.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetFolderReplayResult2> getFolderReplay2(
  GetFolderReplayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getFolderReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayResult2.fromMap(result);
}
