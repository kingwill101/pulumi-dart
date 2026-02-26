import 'package:pulumi/pulumi.dart';
import 'get_service_perimeter_args.dart';
import 'get_service_perimeter_result.dart';

/// Gets a service perimeter based on the resource name.
Future<GetServicePerimeterResult> getServicePerimeter(
  GetServicePerimeterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getServicePerimeter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServicePerimeterResult.fromMap(result);
}
