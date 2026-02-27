import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_config_workstations_v1beta_args.dart';
import 'get_workstation_config_workstations_v1beta_result.dart';

/// Returns the requested workstation configuration.
Future<GetWorkstationConfigWorkstationsV1betaResult>
    getWorkstationConfigWorkstationsV1beta(
  GetWorkstationConfigWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigWorkstationsV1betaResult.fromMap(result);
}
