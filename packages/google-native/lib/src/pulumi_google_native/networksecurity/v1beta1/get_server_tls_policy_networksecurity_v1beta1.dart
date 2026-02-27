import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_tls_policy_networksecurity_v1beta1_args.dart';
import 'get_server_tls_policy_networksecurity_v1beta1_result.dart';

/// Gets details of a single ServerTlsPolicy.
Future<GetServerTlsPolicyNetworksecurityV1beta1Result>
    getServerTlsPolicyNetworksecurityV1beta1(
  GetServerTlsPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getServerTlsPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerTlsPolicyNetworksecurityV1beta1Result.fromMap(result);
}
