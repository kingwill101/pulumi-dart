import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ssl_policy_args3.dart';
import 'get_ssl_policy_result3.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetSslPolicyResult3> getSslPolicy3(
  GetSslPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSslPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyResult3.fromMap(result);
}
