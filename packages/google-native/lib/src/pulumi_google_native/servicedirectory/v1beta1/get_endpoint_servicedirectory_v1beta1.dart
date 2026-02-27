import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_servicedirectory_v1beta1_args.dart';
import 'get_endpoint_servicedirectory_v1beta1_result.dart';

/// Gets an endpoint.
Future<GetEndpointServicedirectoryV1beta1Result>
    getEndpointServicedirectoryV1beta1(
  GetEndpointServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointServicedirectoryV1beta1Result.fromMap(result);
}
