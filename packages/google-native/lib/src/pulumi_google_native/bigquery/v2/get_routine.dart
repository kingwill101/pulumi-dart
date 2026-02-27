import 'package:pulumi/pulumi.dart' hide Config;
import 'get_routine_args.dart';
import 'get_routine_result.dart';

/// Gets the specified routine resource by routine ID.
Future<GetRoutineResult> getRoutine(
  GetRoutineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getRoutine',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRoutineResult.fromMap(result);
}
