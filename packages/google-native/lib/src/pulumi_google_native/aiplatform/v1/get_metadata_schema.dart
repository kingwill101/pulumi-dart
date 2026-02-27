import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metadata_schema_args.dart';
import 'get_metadata_schema_result.dart';

/// Retrieves a specific MetadataSchema.
Future<GetMetadataSchemaResult> getMetadataSchema(
  GetMetadataSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaResult.fromMap(result);
}
