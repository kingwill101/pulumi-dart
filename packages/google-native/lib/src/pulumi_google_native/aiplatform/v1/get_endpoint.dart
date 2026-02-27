import 'package:pulumi/pulumi.dart' hide Config;
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';

/// Gets an Endpoint.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}
