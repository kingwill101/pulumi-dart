import 'package:pulumi/pulumi.dart';
import 'get_endpoint_args5.dart';
import 'get_endpoint_result5.dart';

/// Gets an endpoint.
Future<GetEndpointResult5> getEndpoint5(
  GetEndpointArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult5.fromMap(result);
}
