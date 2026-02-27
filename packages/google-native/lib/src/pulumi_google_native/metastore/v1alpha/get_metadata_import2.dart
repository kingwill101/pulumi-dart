import 'package:pulumi/pulumi.dart' hide Config;
import 'get_metadata_import_args2.dart';
import 'get_metadata_import_result2.dart';

/// Gets details of a single import.
Future<GetMetadataImportResult2> getMetadataImport2(
  GetMetadataImportArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getMetadataImport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportResult2.fromMap(result);
}
