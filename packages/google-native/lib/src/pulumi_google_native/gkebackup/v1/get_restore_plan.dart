import 'package:pulumi/pulumi.dart' hide Config;
import 'get_restore_plan_args.dart';
import 'get_restore_plan_result.dart';

/// Retrieve the details of a single RestorePlan.
Future<GetRestorePlanResult> getRestorePlan(
  GetRestorePlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestorePlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanResult.fromMap(result);
}
