import 'package:pulumi/pulumi.dart';
import 'get_zone_iam_policy_args.dart';
import 'get_zone_iam_policy_result.dart';

/// Retrieves the current IAM policy data for zone
Future<GetZoneIamPolicyResult> getZoneIamPolicy(
  GetZoneIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getZoneIamPolicy:getZoneIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetZoneIamPolicyResult.fromMap(result);
}
