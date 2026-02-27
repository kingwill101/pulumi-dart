import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metadata_import_metastore_v1beta_args.dart';
import 'get_metadata_import_metastore_v1beta_result.dart';

/// Gets details of a single import.
Future<GetMetadataImportMetastoreV1betaResult> getMetadataImportMetastoreV1beta(
  GetMetadataImportMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getMetadataImport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportMetastoreV1betaResult.fromMap(result);
}
