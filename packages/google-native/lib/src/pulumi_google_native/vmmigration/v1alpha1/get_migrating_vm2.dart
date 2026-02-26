import 'package:pulumi/pulumi.dart';
import 'get_migrating_vm_args2.dart';
import 'get_migrating_vm_result2.dart';

/// Gets details of a single MigratingVm.
Future<GetMigratingVmResult2> getMigratingVm2(
  GetMigratingVmArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getMigratingVm',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMigratingVmResult2.fromMap(result);
}
