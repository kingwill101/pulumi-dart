import 'package:pulumi/pulumi.dart';
import 'get_client_config_result.dart';

/// ## Example Usage
///
///
///
///
/// ### Configure Kubernetes Provider With OAuth2 Access Token
Future<GetClientConfigResult> getClientConfig({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getClientConfig:getClientConfig',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}
