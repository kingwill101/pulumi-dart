import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_perimeter_accesscontextmanager_v1beta_args.dart';
import 'get_service_perimeter_accesscontextmanager_v1beta_result.dart';

/// Get a Service Perimeter by resource name.
Future<GetServicePerimeterAccesscontextmanagerV1betaResult>
    getServicePerimeterAccesscontextmanagerV1beta(
  GetServicePerimeterAccesscontextmanagerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getServicePerimeter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePerimeterAccesscontextmanagerV1betaResult.fromMap(result);
}
