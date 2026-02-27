import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_args5.dart';
import 'get_service_result5.dart';

/// Gets information about a service.
Future<GetServiceResult5> getService5(
  GetServiceArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult5.fromMap(result);
}
