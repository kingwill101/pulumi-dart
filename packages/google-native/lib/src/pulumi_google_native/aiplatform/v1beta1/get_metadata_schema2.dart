import 'package:pulumi/pulumi.dart' hide Config;
import 'get_metadata_schema_args2.dart';
import 'get_metadata_schema_result2.dart';

/// Retrieves a specific MetadataSchema.
Future<GetMetadataSchemaResult2> getMetadataSchema2(
  GetMetadataSchemaArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataSchema',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaResult2.fromMap(result);
}
