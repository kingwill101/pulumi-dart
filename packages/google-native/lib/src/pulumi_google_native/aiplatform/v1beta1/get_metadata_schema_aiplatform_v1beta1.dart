import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metadata_schema_aiplatform_v1beta1_args.dart';
import 'get_metadata_schema_aiplatform_v1beta1_result.dart';

/// Retrieves a specific MetadataSchema.
Future<GetMetadataSchemaAiplatformV1beta1Result>
    getMetadataSchemaAiplatformV1beta1(
  GetMetadataSchemaAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaAiplatformV1beta1Result.fromMap(result);
}
