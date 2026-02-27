import 'package:pulumi/pulumi.dart';
import 'get_sslpolicy_args.dart';
import 'get_sslpolicy_result.dart';

/// Gets an SSL Policy within GCE from its name, for use with Target HTTPS and Target SSL Proxies.
/// For more information see [the official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies).
Future<GetSSLPolicyResult> getSSLPolicy(
  GetSSLPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSSLPolicy:getSSLPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSSLPolicyResult.fromMap(result);
}
