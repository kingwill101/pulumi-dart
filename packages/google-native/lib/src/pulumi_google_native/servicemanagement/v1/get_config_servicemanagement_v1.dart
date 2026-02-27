import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_servicemanagement_v1_args.dart';
import 'get_config_servicemanagement_v1_result.dart';

/// Gets a service configuration (version) for a managed service.
Future<GetConfigServicemanagementV1Result> getConfigServicemanagementV1(
  GetConfigServicemanagementV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigServicemanagementV1Result.fromMap(result);
}
