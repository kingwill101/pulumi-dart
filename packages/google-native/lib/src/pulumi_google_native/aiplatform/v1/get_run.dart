import 'package:pulumi/pulumi.dart';
import 'get_run_args.dart';
import 'get_run_result.dart';

/// Gets a TensorboardRun.
Future<GetRunResult> getRun(
  GetRunArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getRun',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRunResult.fromMap(result);
}
