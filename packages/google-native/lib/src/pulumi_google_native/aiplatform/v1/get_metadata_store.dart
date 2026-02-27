import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metadata_store_args.dart';
import 'get_metadata_store_result.dart';

/// Retrieves a specific MetadataStore.
Future<GetMetadataStoreResult> getMetadataStore(
  GetMetadataStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreResult.fromMap(result);
}
