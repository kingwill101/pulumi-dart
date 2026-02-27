import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_endpoint_iam_policy_args.dart';
import 'get_ai_endpoint_iam_policy_result.dart';

Future<GetAiEndpointIamPolicyResult> getAiEndpointIamPolicy(
  GetAiEndpointIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiEndpointIamPolicy:getAiEndpointIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiEndpointIamPolicyResult.fromMap(result);
}
