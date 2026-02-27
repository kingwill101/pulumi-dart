import 'package:pulumi/pulumi.dart' hide Config;
import 'get_migrating_vm_args.dart';
import 'get_migrating_vm_result.dart';

/// Gets details of a single MigratingVm.
Future<GetMigratingVmResult> getMigratingVm(
  GetMigratingVmArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getMigratingVm',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMigratingVmResult.fromMap(result);
}
