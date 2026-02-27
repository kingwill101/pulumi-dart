import 'package:pulumi/pulumi.dart';
import 'get_ai_endpoint_iam_policy_args.dart';
import 'get_ai_endpoint_iam_policy_result.dart';

Future<GetAiEndpointIamPolicyResult> getAiEndpointIamPolicy(
  GetAiEndpointIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiEndpointIamPolicy:getAiEndpointIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiEndpointIamPolicyResult.fromMap(result);
}
