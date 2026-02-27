import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metadata_import_metastore_v1alpha_args.dart';
import 'get_metadata_import_metastore_v1alpha_result.dart';

/// Gets details of a single import.
Future<GetMetadataImportMetastoreV1alphaResult>
    getMetadataImportMetastoreV1alpha(
  GetMetadataImportMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getMetadataImport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportMetastoreV1alphaResult.fromMap(result);
}
