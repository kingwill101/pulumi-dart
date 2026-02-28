import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_config_result.dart';
import 'get_client_token_result.dart';

/// Use this function to access the current configuration of the native Google provider.
/// [options] Invoke options controlling this call.
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

/// Use this function to get an Google authentication token for the current login context.
/// [options] Invoke options controlling this call.
Future<GetClientTokenResult> getClientToken({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:authorization:getClientToken',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTokenResult.fromMap(result);
}
