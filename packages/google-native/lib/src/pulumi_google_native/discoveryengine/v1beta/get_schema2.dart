import 'package:pulumi/pulumi.dart' hide Config;
import 'get_schema_args2.dart';
import 'get_schema_result2.dart';

/// Gets a Schema.
Future<GetSchemaResult2> getSchema2(
  GetSchemaArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getSchema',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult2.fromMap(result);
}
