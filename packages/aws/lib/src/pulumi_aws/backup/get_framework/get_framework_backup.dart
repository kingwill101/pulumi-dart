import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_backup_args.dart';
import 'get_framework_backup_result.dart';

/// Use this data source to get information on an existing backup framework.
Future<GetFrameworkBackupResult> getFrameworkBackup(
  GetFrameworkBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getFramework:getFramework',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrameworkBackupResult.fromMap(result);
}
