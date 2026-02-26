import 'package:pulumi/pulumi.dart';
import 'get_proxy_config_args.dart';
import 'get_proxy_config_result.dart';

/// Gets details of a single ProxyConfig.
Future<GetProxyConfigResult> getProxyConfig(
  GetProxyConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getProxyConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProxyConfigResult.fromMap(result);
}
