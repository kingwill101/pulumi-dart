import 'package:pulumi/pulumi.dart' hide Config;
import 'get_trigger_args3.dart';
import 'get_trigger_result3.dart';

/// Get a single trigger.
Future<GetTriggerResult3> getTrigger3(
  GetTriggerArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1beta1:getTrigger',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult3.fromMap(result);
}
