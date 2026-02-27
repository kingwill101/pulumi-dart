import 'package:pulumi/pulumi.dart' hide Config;
import 'get_managed_zone_iam_policy_args.dart';
import 'get_managed_zone_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetManagedZoneIamPolicyResult> getManagedZoneIamPolicy(
  GetManagedZoneIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getManagedZoneIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyResult.fromMap(result);
}
