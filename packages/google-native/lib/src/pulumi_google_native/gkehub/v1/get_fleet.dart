import 'package:pulumi/pulumi.dart';
import 'get_fleet_args.dart';
import 'get_fleet_result.dart';

/// Returns the details of a fleet.
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getFleet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}
