import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schema_pubsub_v1_args.dart';
import 'get_schema_pubsub_v1_result.dart';

/// Gets a schema.
Future<GetSchemaPubsubV1Result> getSchemaPubsubV1(
  GetSchemaPubsubV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaPubsubV1Result.fromMap(result);
}
