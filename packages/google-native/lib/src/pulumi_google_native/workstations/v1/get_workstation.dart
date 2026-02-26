import 'package:pulumi/pulumi.dart';
import 'get_workstation_args.dart';
import 'get_workstation_result.dart';

/// Returns the requested workstation.
Future<GetWorkstationResult> getWorkstation(
  GetWorkstationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationResult.fromMap(result);
}
