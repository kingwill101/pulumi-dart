import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_job_trigger_args.dart';
import 'get_organization_job_trigger_result.dart';

/// Gets a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
Future<GetOrganizationJobTriggerResult> getOrganizationJobTrigger(
  GetOrganizationJobTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationJobTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationJobTriggerResult.fromMap(result);
}
