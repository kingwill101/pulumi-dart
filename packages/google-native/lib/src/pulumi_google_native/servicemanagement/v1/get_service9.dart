import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_args9.dart';
import 'get_service_result9.dart';

/// Gets a managed service. Authentication is required unless the service is public.
Future<GetServiceResult9> getService9(
  GetServiceArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult9.fromMap(result);
}
