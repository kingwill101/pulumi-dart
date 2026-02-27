import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_workstations_v1beta_args.dart';
import 'get_workstation_workstations_v1beta_result.dart';

/// Returns the requested workstation.
Future<GetWorkstationWorkstationsV1betaResult> getWorkstationWorkstationsV1beta(
  GetWorkstationWorkstationsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationWorkstationsV1betaResult.fromMap(result);
}
