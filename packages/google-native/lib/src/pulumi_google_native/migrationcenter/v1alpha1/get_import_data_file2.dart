import 'package:pulumi/pulumi.dart' hide Config;
import 'get_import_data_file_args2.dart';
import 'get_import_data_file_result2.dart';

/// Gets an import data file.
Future<GetImportDataFileResult2> getImportDataFile2(
  GetImportDataFileArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportDataFile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImportDataFileResult2.fromMap(result);
}
