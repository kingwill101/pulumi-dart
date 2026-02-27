import 'package:pulumi/pulumi.dart' hide Config;
import 'get_schema_args3.dart';
import 'get_schema_result3.dart';

/// Gets a schema.
Future<GetSchemaResult3> getSchema3(
  GetSchemaArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSchema',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult3.fromMap(result);
}
