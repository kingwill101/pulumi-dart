import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_endpoint_args.dart';
import 'get_index_endpoint_result.dart';

/// Gets an IndexEndpoint.
Future<GetIndexEndpointResult> getIndexEndpoint(
  GetIndexEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndexEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexEndpointResult.fromMap(result);
}
