import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workstation_args.dart';
import 'get_workstation_result.dart';

/// Returns the requested workstation.
Future<GetWorkstationResult> getWorkstation(
  GetWorkstationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1:getWorkstation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkstationResult.fromMap(result);
}
