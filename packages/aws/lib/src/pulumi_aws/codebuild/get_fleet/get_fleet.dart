import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codebuild/getFleet:getFleet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}
