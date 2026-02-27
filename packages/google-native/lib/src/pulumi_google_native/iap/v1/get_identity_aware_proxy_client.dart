import 'package:pulumi/pulumi.dart' hide Config;
import 'get_identity_aware_proxy_client_args.dart';
import 'get_identity_aware_proxy_client_result.dart';

/// Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client is owned by IAP.
Future<GetIdentityAwareProxyClientResult> getIdentityAwareProxyClient(
  GetIdentityAwareProxyClientArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getIdentityAwareProxyClient',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIdentityAwareProxyClientResult.fromMap(result);
}
