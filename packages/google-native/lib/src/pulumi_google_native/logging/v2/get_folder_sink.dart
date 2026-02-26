import 'package:pulumi/pulumi.dart';
import 'get_folder_sink_args.dart';
import 'get_folder_sink_result.dart';

/// Gets a sink.
Future<GetFolderSinkResult> getFolderSink(
  GetFolderSinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderSink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderSinkResult.fromMap(result);
}
