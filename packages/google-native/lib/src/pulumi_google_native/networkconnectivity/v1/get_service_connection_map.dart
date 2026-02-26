import 'package:pulumi/pulumi.dart';
import 'get_service_connection_map_args.dart';
import 'get_service_connection_map_result.dart';

/// Gets details of a single ServiceConnectionMap.
Future<GetServiceConnectionMapResult> getServiceConnectionMap(
  GetServiceConnectionMapArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionMapResult.fromMap(result);
}
