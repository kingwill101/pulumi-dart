import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_args6.dart';
import 'get_service_result6.dart';

/// Gets information about a Service.
Future<GetServiceResult6> getService6(
  GetServiceArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult6.fromMap(result);
}
