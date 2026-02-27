import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_ids_v1_args.dart';
import 'get_endpoint_ids_v1_result.dart';

/// Gets details of a single Endpoint.
Future<GetEndpointIdsV1Result> getEndpointIdsV1(
  GetEndpointIdsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ids/v1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointIdsV1Result.fromMap(result);
}
