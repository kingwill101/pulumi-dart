import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_ssl_policy_args2.dart';
import 'get_region_ssl_policy_result2.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetRegionSslPolicyResult2> getRegionSslPolicy2(
  GetRegionSslPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSslPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyResult2.fromMap(result);
}
