import 'package:pulumi/pulumi.dart';
import 'get_endpoint_args4.dart';
import 'get_endpoint_result4.dart';

/// Gets an endpoint.
Future<GetEndpointResult4> getEndpoint4(
  GetEndpointArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult4.fromMap(result);
}
