import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workstation_config_args2.dart';
import 'get_workstation_config_result2.dart';

/// Returns the requested workstation configuration.
Future<GetWorkstationConfigResult2> getWorkstationConfig2(
  GetWorkstationConfigArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstationConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationConfigResult2.fromMap(result);
}
