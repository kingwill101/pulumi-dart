import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_action_args.dart';
import 'get_scheduled_action_result.dart';

/// Get a ScheduledAction
///
/// Uses Azure REST API version 2025-04-15-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-03-01-preview, 2026-04-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native computeschedule [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_computeschedule_get_scheduled_action_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledActionResult> getScheduledAction(
  GetScheduledActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:computeschedule:getScheduledAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledActionResult.fromMap(result);
}
