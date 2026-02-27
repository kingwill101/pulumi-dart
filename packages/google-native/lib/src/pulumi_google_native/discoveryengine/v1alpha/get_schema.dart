import 'package:pulumi/pulumi.dart' hide Config;
import 'get_schema_args.dart';
import 'get_schema_result.dart';

/// Gets a Schema.
Future<GetSchemaResult> getSchema(
  GetSchemaArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getSchema',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult.fromMap(result);
}
