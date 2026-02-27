import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_compute_v1_args.dart';
import 'get_region_security_policy_compute_v1_result.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetRegionSecurityPolicyComputeV1Result> getRegionSecurityPolicyComputeV1(
  GetRegionSecurityPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyComputeV1Result.fromMap(result);
}
