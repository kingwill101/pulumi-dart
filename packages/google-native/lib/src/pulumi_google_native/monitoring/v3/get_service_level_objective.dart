import 'package:pulumi/pulumi.dart';
import 'get_service_level_objective_args.dart';
import 'get_service_level_objective_result.dart';

/// Get a ServiceLevelObjective by name.
Future<GetServiceLevelObjectiveResult> getServiceLevelObjective(
  GetServiceLevelObjectiveArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getServiceLevelObjective',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceLevelObjectiveResult.fromMap(result);
}
