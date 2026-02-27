import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_args.dart';
import 'get_region_security_policy_result.dart';

/// Use this data source to get information about a Compute Region Security Policy. For more details, see the [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies).
Future<GetRegionSecurityPolicyResult> getRegionSecurityPolicy(
  GetRegionSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSecurityPolicy:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult.fromMap(result);
}
