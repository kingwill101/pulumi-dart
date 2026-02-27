import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_zone_iam_policy_args.dart';
import 'get_managed_zone_iam_policy_result.dart';

/// Retrieves the current IAM policy data for managedzone
Future<GetManagedZoneIamPolicyResult> getManagedZoneIamPolicy(
  GetManagedZoneIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZoneIamPolicy:getManagedZoneIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyResult.fromMap(result);
}
