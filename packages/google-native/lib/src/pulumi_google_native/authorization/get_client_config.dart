import 'package:pulumi/pulumi.dart' hide Config;
import 'get_client_config_result.dart';

/// Use this function to access the current configuration of the native Google provider.
Future<GetClientConfigResult> getClientConfig({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:authorization:getClientConfig',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}
