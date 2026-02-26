import 'package:pulumi/pulumi.dart';
import 'get_service_args7.dart';
import 'get_service_result7.dart';

/// Gets a service.
Future<GetServiceResult7> getService7(
  GetServiceArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult7.fromMap(result);
}
