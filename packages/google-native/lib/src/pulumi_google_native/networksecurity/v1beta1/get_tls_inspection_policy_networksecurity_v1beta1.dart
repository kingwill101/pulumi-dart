import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tls_inspection_policy_networksecurity_v1beta1_args.dart';
import 'get_tls_inspection_policy_networksecurity_v1beta1_result.dart';

/// Gets details of a single TlsInspectionPolicy.
Future<GetTlsInspectionPolicyNetworksecurityV1beta1Result>
    getTlsInspectionPolicyNetworksecurityV1beta1(
  GetTlsInspectionPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getTlsInspectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsInspectionPolicyNetworksecurityV1beta1Result.fromMap(result);
}
