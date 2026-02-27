import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_iam_policy_run_v1_args.dart';
import 'get_service_iam_policy_run_v1_result.dart';

/// Gets the IAM Access Control policy currently in effect for the given Cloud Run service. This result does not include any inherited policies.
Future<GetServiceIamPolicyRunV1Result> getServiceIamPolicyRunV1(
  GetServiceIamPolicyRunV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyRunV1Result.fromMap(result);
}
