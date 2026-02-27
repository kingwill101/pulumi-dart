import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_import_data_file_migrationcenter_v1alpha1_args.dart';
import 'get_import_data_file_migrationcenter_v1alpha1_result.dart';

/// Gets an import data file.
Future<GetImportDataFileMigrationcenterV1alpha1Result>
    getImportDataFileMigrationcenterV1alpha1(
  GetImportDataFileMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportDataFile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportDataFileMigrationcenterV1alpha1Result.fromMap(result);
}
