import 'package:pulumi/pulumi.dart';
import 'get_trigger_args2.dart';
import 'get_trigger_result2.dart';

/// Get a single trigger.
Future<GetTriggerResult2> getTrigger2(
  GetTriggerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getTrigger',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult2.fromMap(result);
}
