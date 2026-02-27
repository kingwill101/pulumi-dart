import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_zone_iam_policy_dns_v1beta2_args.dart';
import 'get_managed_zone_iam_policy_dns_v1beta2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetManagedZoneIamPolicyDnsV1beta2Result>
    getManagedZoneIamPolicyDnsV1beta2(
  GetManagedZoneIamPolicyDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZoneIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyDnsV1beta2Result.fromMap(result);
}
