import 'package:pulumi/pulumi.dart';
import 'get_fleet_args3.dart';
import 'get_fleet_result3.dart';

/// Returns the details of a fleet.
Future<GetFleetResult3> getFleet3(
  GetFleetArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFleet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFleetResult3.fromMap(result);
}
