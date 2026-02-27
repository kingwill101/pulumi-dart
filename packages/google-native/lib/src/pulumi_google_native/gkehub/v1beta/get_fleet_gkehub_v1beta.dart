import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_gkehub_v1beta_args.dart';
import 'get_fleet_gkehub_v1beta_result.dart';

/// Returns the details of a fleet.
Future<GetFleetGkehubV1betaResult> getFleetGkehubV1beta(
  GetFleetGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetGkehubV1betaResult.fromMap(result);
}
