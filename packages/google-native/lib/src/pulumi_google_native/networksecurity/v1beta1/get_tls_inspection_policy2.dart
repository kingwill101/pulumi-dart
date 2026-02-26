import 'package:pulumi/pulumi.dart';
import 'get_tls_inspection_policy_args2.dart';
import 'get_tls_inspection_policy_result2.dart';

/// Gets details of a single TlsInspectionPolicy.
Future<GetTlsInspectionPolicyResult2> getTlsInspectionPolicy2(
  GetTlsInspectionPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getTlsInspectionPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTlsInspectionPolicyResult2.fromMap(result);
}
