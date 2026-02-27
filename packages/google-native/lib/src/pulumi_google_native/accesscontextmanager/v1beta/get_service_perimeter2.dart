import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_perimeter_args2.dart';
import 'get_service_perimeter_result2.dart';

/// Get a Service Perimeter by resource name.
Future<GetServicePerimeterResult2> getServicePerimeter2(
  GetServicePerimeterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getServicePerimeter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServicePerimeterResult2.fromMap(result);
}
