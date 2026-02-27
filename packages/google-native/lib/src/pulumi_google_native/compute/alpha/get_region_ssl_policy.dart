import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_ssl_policy_args.dart';
import 'get_region_ssl_policy_result.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetRegionSslPolicyResult> getRegionSslPolicy(
  GetRegionSslPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSslPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyResult.fromMap(result);
}
