import 'package:pulumi/pulumi.dart' hide Config;
import 'get_trigger_args.dart';
import 'get_trigger_result.dart';

/// Returns information about a `BuildTrigger`.
Future<GetTriggerResult> getTrigger(
  GetTriggerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getTrigger',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult.fromMap(result);
}
