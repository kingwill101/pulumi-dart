import 'package:pulumi/pulumi.dart';
import 'get_nas_job_args.dart';
import 'get_nas_job_result.dart';

/// Gets a NasJob
Future<GetNasJobResult> getNasJob(
  GetNasJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNasJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNasJobResult.fromMap(result);
}
