import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_iam_policy_servicemanagement_v1_args.dart';
import 'get_service_iam_policy_servicemanagement_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceIamPolicyServicemanagementV1Result>
    getServiceIamPolicyServicemanagementV1(
  GetServiceIamPolicyServicemanagementV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicemanagement/v1:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyServicemanagementV1Result.fromMap(result);
}
