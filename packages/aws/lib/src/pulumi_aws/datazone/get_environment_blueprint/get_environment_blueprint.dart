import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_blueprint_args.dart';
import 'get_environment_blueprint_result.dart';

/// Data source for managing an AWS DataZone Environment Blueprint.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEnvironmentBlueprintResult> getEnvironmentBlueprint(
  GetEnvironmentBlueprintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datazone/getEnvironmentBlueprint:getEnvironmentBlueprint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentBlueprintResult.fromMap(result);
}
