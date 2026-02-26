import 'package:pulumi/pulumi.dart';
import 'get_job_template_args.dart';
import 'get_job_template_result.dart';

/// Returns the job template data.
Future<GetJobTemplateResult> getJobTemplate(
  GetJobTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:transcoder/v1:getJobTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobTemplateResult.fromMap(result);
}
