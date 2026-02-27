import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nas_job_args.dart';
import 'get_nas_job_result.dart';

/// Gets a NasJob
Future<GetNasJobResult> getNasJob(
  GetNasJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNasJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasJobResult.fromMap(result);
}
