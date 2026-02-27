import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metadata_store_aiplatform_v1beta1_args.dart';
import 'get_metadata_store_aiplatform_v1beta1_result.dart';

/// Retrieves a specific MetadataStore.
Future<GetMetadataStoreAiplatformV1beta1Result>
    getMetadataStoreAiplatformV1beta1(
  GetMetadataStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreAiplatformV1beta1Result.fromMap(result);
}
