import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_iam_policy_run_v2_args.dart';
import 'get_service_iam_policy_run_v2_result.dart';

/// Gets the IAM Access Control policy currently in effect for the given Cloud Run Service. This result does not include any inherited policies.
Future<GetServiceIamPolicyRunV2Result> getServiceIamPolicyRunV2(
  GetServiceIamPolicyRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyRunV2Result.fromMap(result);
}
