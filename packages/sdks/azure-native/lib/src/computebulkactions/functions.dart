import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bulk_action_args.dart';
import 'get_bulk_action_result.dart';

/// Gets an instance of LaunchBulkInstancesOperations.
///
/// Uses Azure REST API version 2026-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_computebulkactions_get_bulk_action_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBulkActionResult> getBulkAction(
  GetBulkActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:computebulkactions:getBulkAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBulkActionResult.fromMap(result);
}
