import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schema_discoveryengine_v1beta_args.dart';
import 'get_schema_discoveryengine_v1beta_result.dart';

/// Gets a Schema.
Future<GetSchemaDiscoveryengineV1betaResult> getSchemaDiscoveryengineV1beta(
  GetSchemaDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaDiscoveryengineV1betaResult.fromMap(result);
}
