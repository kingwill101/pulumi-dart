import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_migrating_vm_args.dart';
import 'get_migrating_vm_result.dart';

/// Gets details of a single MigratingVm.
Future<GetMigratingVmResult> getMigratingVm(
  GetMigratingVmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getMigratingVm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigratingVmResult.fromMap(result);
}
