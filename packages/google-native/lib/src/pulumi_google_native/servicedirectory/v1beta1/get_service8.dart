import 'package:pulumi/pulumi.dart';
import 'get_service_args8.dart';
import 'get_service_result8.dart';

/// Gets a service.
Future<GetServiceResult8> getService8(
  GetServiceArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult8.fromMap(result);
}
