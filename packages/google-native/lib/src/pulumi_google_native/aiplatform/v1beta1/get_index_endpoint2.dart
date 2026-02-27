import 'package:pulumi/pulumi.dart' hide Config;
import 'get_index_endpoint_args2.dart';
import 'get_index_endpoint_result2.dart';

/// Gets an IndexEndpoint.
Future<GetIndexEndpointResult2> getIndexEndpoint2(
  GetIndexEndpointArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndexEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexEndpointResult2.fromMap(result);
}
