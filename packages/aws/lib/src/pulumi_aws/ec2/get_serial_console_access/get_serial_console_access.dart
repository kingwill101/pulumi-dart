import 'package:pulumi/pulumi.dart';
import 'get_serial_console_access_args.dart';
import 'get_serial_console_access_result.dart';

/// Provides a way to check whether serial console access is enabled for your AWS account in the current AWS region.
Future<GetSerialConsoleAccessResult> getSerialConsoleAccess(
  GetSerialConsoleAccessArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSerialConsoleAccess:getSerialConsoleAccess',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSerialConsoleAccessResult.fromMap(result);
}
