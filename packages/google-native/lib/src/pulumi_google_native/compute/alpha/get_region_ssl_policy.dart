import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_ssl_policy_args.dart';
import 'get_region_ssl_policy_result.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetRegionSslPolicyResult> getRegionSslPolicy(
  GetRegionSslPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyResult.fromMap(result);
}
