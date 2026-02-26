import 'package:pulumi/pulumi.dart';
import 'get_service_consumers_iam_policy_args.dart';
import 'get_service_consumers_iam_policy_result.dart';

/// Retrieves the current IAM policy data for serviceconsumers
Future<GetServiceConsumersIamPolicyResult> getServiceConsumersIamPolicy(
  GetServiceConsumersIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:endpoints/getServiceConsumersIamPolicy:getServiceConsumersIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceConsumersIamPolicyResult.fromMap(result);
}
