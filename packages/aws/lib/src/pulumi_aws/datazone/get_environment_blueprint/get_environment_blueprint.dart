import 'package:pulumi/pulumi.dart';
import 'get_environment_blueprint_args.dart';
import 'get_environment_blueprint_result.dart';

/// Data source for managing an AWS DataZone Environment Blueprint.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEnvironmentBlueprintResult> getEnvironmentBlueprint(
  GetEnvironmentBlueprintArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datazone/getEnvironmentBlueprint:getEnvironmentBlueprint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentBlueprintResult.fromMap(result);
}
