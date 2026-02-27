import 'package:pulumi/pulumi.dart';
import 'get_trigger_args.dart';
import 'get_trigger_result.dart';

/// To get more information about Cloudbuild Trigger, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest/v1/projects.triggers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/build/docs/automating-builds/create-manage-triggers)
Future<GetTriggerResult> getTrigger(
  GetTriggerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudbuild/getTrigger:getTrigger',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult.fromMap(result);
}
