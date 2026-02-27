import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_args.dart';
import 'get_fleet_result.dart';

/// Retrieve information about an CodeBuild Fleet.
///
/// ## Example Usage
///
///
///
/// ### Basic Usage
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codebuild/getFleet:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}
