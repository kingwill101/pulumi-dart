import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_iam_policy_servicedirectory_args.dart';
import 'get_service_iam_policy_servicedirectory_result.dart';

/// Retrieves the current IAM policy data for service
Future<GetServiceIamPolicyServicedirectoryResult>
    getServiceIamPolicyServicedirectory(
  GetServiceIamPolicyServicedirectoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicedirectory/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyServicedirectoryResult.fromMap(result);
}
