import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_migrating_vm_vmmigration_v1alpha1_args.dart';
import 'get_migrating_vm_vmmigration_v1alpha1_result.dart';

/// Gets details of a single MigratingVm.
Future<GetMigratingVmVmmigrationV1alpha1Result>
    getMigratingVmVmmigrationV1alpha1(
  GetMigratingVmVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getMigratingVm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigratingVmVmmigrationV1alpha1Result.fromMap(result);
}
