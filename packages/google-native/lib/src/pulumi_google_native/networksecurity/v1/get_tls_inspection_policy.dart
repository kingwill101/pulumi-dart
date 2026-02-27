import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tls_inspection_policy_args.dart';
import 'get_tls_inspection_policy_result.dart';

/// Gets details of a single TlsInspectionPolicy.
Future<GetTlsInspectionPolicyResult> getTlsInspectionPolicy(
  GetTlsInspectionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getTlsInspectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsInspectionPolicyResult.fromMap(result);
}
