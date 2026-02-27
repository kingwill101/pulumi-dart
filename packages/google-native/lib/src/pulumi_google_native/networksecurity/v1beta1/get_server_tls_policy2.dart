import 'package:pulumi/pulumi.dart' hide Config;
import 'get_server_tls_policy_args2.dart';
import 'get_server_tls_policy_result2.dart';

/// Gets details of a single ServerTlsPolicy.
Future<GetServerTlsPolicyResult2> getServerTlsPolicy2(
  GetServerTlsPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getServerTlsPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyResult2.fromMap(result);
}
