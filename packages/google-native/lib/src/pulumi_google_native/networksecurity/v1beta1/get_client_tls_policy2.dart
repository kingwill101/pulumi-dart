import 'package:pulumi/pulumi.dart' hide Config;
import 'get_client_tls_policy_args2.dart';
import 'get_client_tls_policy_result2.dart';

/// Gets details of a single ClientTlsPolicy.
Future<GetClientTlsPolicyResult2> getClientTlsPolicy2(
  GetClientTlsPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getClientTlsPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyResult2.fromMap(result);
}
