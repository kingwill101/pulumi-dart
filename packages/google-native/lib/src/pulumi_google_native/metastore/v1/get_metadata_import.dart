import 'package:pulumi/pulumi.dart' hide Config;
import 'get_metadata_import_args.dart';
import 'get_metadata_import_result.dart';

/// Gets details of a single import.
Future<GetMetadataImportResult> getMetadataImport(
  GetMetadataImportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getMetadataImport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportResult.fromMap(result);
}
