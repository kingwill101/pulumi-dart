import 'package:pulumi/pulumi.dart';
import 'get_metadata_store_args2.dart';
import 'get_metadata_store_result2.dart';

/// Retrieves a specific MetadataStore.
Future<GetMetadataStoreResult2> getMetadataStore2(
  GetMetadataStoreArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreResult2.fromMap(result);
}
