import 'package:pulumi/pulumi.dart';
import 'get_folder_replay_args3.dart';
import 'get_folder_replay_result3.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetFolderReplayResult3> getFolderReplay3(
  GetFolderReplayArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getFolderReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayResult3.fromMap(result);
}
