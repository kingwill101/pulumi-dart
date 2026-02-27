import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_import_data_file_args.dart';
import 'get_import_data_file_result.dart';

/// Gets an import data file.
Future<GetImportDataFileResult> getImportDataFile(
  GetImportDataFileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportDataFile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportDataFileResult.fromMap(result);
}
