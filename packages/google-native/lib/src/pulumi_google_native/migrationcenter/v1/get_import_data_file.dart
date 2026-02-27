import 'package:pulumi/pulumi.dart' hide Config;
import 'get_import_data_file_args.dart';
import 'get_import_data_file_result.dart';

/// Gets an import data file.
Future<GetImportDataFileResult> getImportDataFile(
  GetImportDataFileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportDataFile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImportDataFileResult.fromMap(result);
}
