import 'package:pulumi/pulumi.dart' hide Config;
import 'get_lake_zone_iam_policy_args.dart';
import 'get_lake_zone_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetLakeZoneIamPolicyResult> getLakeZoneIamPolicy(
  GetLakeZoneIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeZoneIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLakeZoneIamPolicyResult.fromMap(result);
}
