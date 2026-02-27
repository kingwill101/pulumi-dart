import 'package:pulumi/pulumi.dart' hide Config;
import 'get_endpoint_args2.dart';
import 'get_endpoint_result2.dart';

/// Gets an Endpoint.
Future<GetEndpointResult2> getEndpoint2(
  GetEndpointArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult2.fromMap(result);
}
