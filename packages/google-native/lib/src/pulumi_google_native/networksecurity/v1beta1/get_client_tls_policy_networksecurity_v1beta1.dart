import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_tls_policy_networksecurity_v1beta1_args.dart';
import 'get_client_tls_policy_networksecurity_v1beta1_result.dart';

/// Gets details of a single ClientTlsPolicy.
Future<GetClientTlsPolicyNetworksecurityV1beta1Result>
    getClientTlsPolicyNetworksecurityV1beta1(
  GetClientTlsPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getClientTlsPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyNetworksecurityV1beta1Result.fromMap(result);
}
