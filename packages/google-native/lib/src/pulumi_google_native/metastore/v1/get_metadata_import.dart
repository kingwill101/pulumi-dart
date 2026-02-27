import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metadata_import_args.dart';
import 'get_metadata_import_result.dart';

/// Gets details of a single import.
Future<GetMetadataImportResult> getMetadataImport(
  GetMetadataImportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getMetadataImport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportResult.fromMap(result);
}
