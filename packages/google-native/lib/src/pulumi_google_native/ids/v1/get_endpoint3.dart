import 'package:pulumi/pulumi.dart';
import 'get_endpoint_args3.dart';
import 'get_endpoint_result3.dart';

/// Gets details of a single Endpoint.
Future<GetEndpointResult3> getEndpoint3(
  GetEndpointArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ids/v1:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult3.fromMap(result);
}
