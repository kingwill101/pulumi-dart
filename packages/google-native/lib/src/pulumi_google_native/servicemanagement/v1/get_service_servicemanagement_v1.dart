import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_servicemanagement_v1_args.dart';
import 'get_service_servicemanagement_v1_result.dart';

/// Gets a managed service. Authentication is required unless the service is public.
Future<GetServiceServicemanagementV1Result> getServiceServicemanagementV1(
  GetServiceServicemanagementV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceServicemanagementV1Result.fromMap(result);
}
