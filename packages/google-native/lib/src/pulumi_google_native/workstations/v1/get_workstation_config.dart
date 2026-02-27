import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_config_args.dart';
import 'get_workstation_config_result.dart';

/// Returns the requested workstation configuration.
Future<GetWorkstationConfigResult> getWorkstationConfig(
  GetWorkstationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigResult.fromMap(result);
}
