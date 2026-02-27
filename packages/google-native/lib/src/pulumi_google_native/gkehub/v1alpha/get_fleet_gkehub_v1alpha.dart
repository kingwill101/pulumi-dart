import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_gkehub_v1alpha_args.dart';
import 'get_fleet_gkehub_v1alpha_result.dart';

/// Returns the details of a fleet.
Future<GetFleetGkehubV1alphaResult> getFleetGkehubV1alpha(
  GetFleetGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetGkehubV1alphaResult.fromMap(result);
}
