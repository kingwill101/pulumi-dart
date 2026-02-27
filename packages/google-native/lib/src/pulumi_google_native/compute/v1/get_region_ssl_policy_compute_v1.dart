import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_ssl_policy_compute_v1_args.dart';
import 'get_region_ssl_policy_compute_v1_result.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetRegionSslPolicyComputeV1Result> getRegionSslPolicyComputeV1(
  GetRegionSslPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyComputeV1Result.fromMap(result);
}
