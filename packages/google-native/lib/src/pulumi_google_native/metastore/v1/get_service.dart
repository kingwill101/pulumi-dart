import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_args.dart';
import 'get_service_result.dart';

/// Gets the details of a single service.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
