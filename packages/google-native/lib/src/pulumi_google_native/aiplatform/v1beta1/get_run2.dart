import 'package:pulumi/pulumi.dart';
import 'get_run_args2.dart';
import 'get_run_result2.dart';

/// Gets a TensorboardRun.
Future<GetRunResult2> getRun2(
  GetRunArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getRun',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRunResult2.fromMap(result);
}
