import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_config_result.dart';

/// ## Example Usage
///
///
///
///
/// ### Configure Kubernetes Provider With OAuth2 Access Token
Future<GetClientConfigResult> getClientConfig({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getClientConfig:getClientConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}
