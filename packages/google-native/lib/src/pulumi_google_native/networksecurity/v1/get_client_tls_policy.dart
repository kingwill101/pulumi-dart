import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_tls_policy_args.dart';
import 'get_client_tls_policy_result.dart';

/// Gets details of a single ClientTlsPolicy.
Future<GetClientTlsPolicyResult> getClientTlsPolicy(
  GetClientTlsPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getClientTlsPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyResult.fromMap(result);
}
