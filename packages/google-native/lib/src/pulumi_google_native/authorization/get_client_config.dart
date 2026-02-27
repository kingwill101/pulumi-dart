import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_config_result.dart';

/// Use this function to access the current configuration of the native Google provider.
Future<GetClientConfigResult> getClientConfig({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:authorization:getClientConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}
