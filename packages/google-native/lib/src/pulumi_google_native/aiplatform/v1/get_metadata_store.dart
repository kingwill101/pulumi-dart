import 'package:pulumi/pulumi.dart';
import 'get_metadata_store_args.dart';
import 'get_metadata_store_result.dart';

/// Retrieves a specific MetadataStore.
Future<GetMetadataStoreResult> getMetadataStore(
  GetMetadataStoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreResult.fromMap(result);
}
