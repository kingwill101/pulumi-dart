import 'package:pulumi/pulumi.dart';
import 'get_fleet_args2.dart';
import 'get_fleet_result2.dart';

/// Returns the details of a fleet.
Future<GetFleetResult2> getFleet2(
  GetFleetArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFleet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFleetResult2.fromMap(result);
}
