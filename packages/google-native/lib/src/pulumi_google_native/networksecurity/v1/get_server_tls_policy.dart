import 'package:pulumi/pulumi.dart' hide Config;
import 'get_server_tls_policy_args.dart';
import 'get_server_tls_policy_result.dart';

/// Gets details of a single ServerTlsPolicy.
Future<GetServerTlsPolicyResult> getServerTlsPolicy(
  GetServerTlsPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getServerTlsPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyResult.fromMap(result);
}
