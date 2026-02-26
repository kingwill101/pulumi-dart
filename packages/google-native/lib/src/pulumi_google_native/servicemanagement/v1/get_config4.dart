import 'package:pulumi/pulumi.dart';
import 'get_config_args4.dart';
import 'get_config_result4.dart';

/// Gets a service configuration (version) for a managed service.
Future<GetConfigResult4> getConfig4(
  GetConfigArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigResult4.fromMap(result);
}
