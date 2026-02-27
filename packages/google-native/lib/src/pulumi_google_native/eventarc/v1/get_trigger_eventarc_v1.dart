import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_eventarc_v1_args.dart';
import 'get_trigger_eventarc_v1_result.dart';

/// Get a single trigger.
Future<GetTriggerEventarcV1Result> getTriggerEventarcV1(
  GetTriggerEventarcV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerEventarcV1Result.fromMap(result);
}
