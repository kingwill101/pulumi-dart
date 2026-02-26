import 'package:pulumi/pulumi.dart';
import 'get_ssl_policy_args2.dart';
import 'get_ssl_policy_result2.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetSslPolicyResult2> getSslPolicy2(
  GetSslPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSslPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyResult2.fromMap(result);
}
