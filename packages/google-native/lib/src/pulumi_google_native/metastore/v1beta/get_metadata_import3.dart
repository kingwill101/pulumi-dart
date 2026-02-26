import 'package:pulumi/pulumi.dart';
import 'get_metadata_import_args3.dart';
import 'get_metadata_import_result3.dart';

/// Gets details of a single import.
Future<GetMetadataImportResult3> getMetadataImport3(
  GetMetadataImportArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getMetadataImport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportResult3.fromMap(result);
}
