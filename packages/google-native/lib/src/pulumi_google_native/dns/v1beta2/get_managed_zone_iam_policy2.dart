import 'package:pulumi/pulumi.dart' hide Config;
import 'get_managed_zone_iam_policy_args2.dart';
import 'get_managed_zone_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetManagedZoneIamPolicyResult2> getManagedZoneIamPolicy2(
  GetManagedZoneIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZoneIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyResult2.fromMap(result);
}
