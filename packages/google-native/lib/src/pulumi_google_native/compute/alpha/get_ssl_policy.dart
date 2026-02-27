import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ssl_policy_args.dart';
import 'get_ssl_policy_result.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetSslPolicyResult> getSslPolicy(
  GetSslPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSslPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyResult.fromMap(result);
}
