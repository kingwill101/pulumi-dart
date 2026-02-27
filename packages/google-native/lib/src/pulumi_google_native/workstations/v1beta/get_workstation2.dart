import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workstation_args2.dart';
import 'get_workstation_result2.dart';

/// Returns the requested workstation.
Future<GetWorkstationResult2> getWorkstation2(
  GetWorkstationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workstations/v1beta:getWorkstation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkstationResult2.fromMap(result);
}
