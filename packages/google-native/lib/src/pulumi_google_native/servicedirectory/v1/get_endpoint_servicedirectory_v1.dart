import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_servicedirectory_v1_args.dart';
import 'get_endpoint_servicedirectory_v1_result.dart';

/// Gets an endpoint.
Future<GetEndpointServicedirectoryV1Result> getEndpointServicedirectoryV1(
  GetEndpointServicedirectoryV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointServicedirectoryV1Result.fromMap(result);
}
