import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dlp_job_args.dart';
import 'get_dlp_job_result.dart';

/// Gets the latest state of a long-running DlpJob. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
Future<GetDlpJobResult> getDlpJob(
  GetDlpJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getDlpJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDlpJobResult.fromMap(result);
}
