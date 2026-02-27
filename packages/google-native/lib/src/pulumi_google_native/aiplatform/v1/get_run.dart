import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_run_args.dart';
import 'get_run_result.dart';

/// Gets a TensorboardRun.
Future<GetRunResult> getRun(
  GetRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunResult.fromMap(result);
}
