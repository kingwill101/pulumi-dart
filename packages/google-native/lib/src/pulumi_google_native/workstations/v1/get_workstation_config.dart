import 'package:pulumi/pulumi.dart';
import 'get_workstation_config_args.dart';
import 'get_workstation_config_result.dart';

/// Returns the requested workstation configuration.
Future<GetWorkstationConfigResult> getWorkstationConfig(
  GetWorkstationConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstationConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigResult.fromMap(result);
}
