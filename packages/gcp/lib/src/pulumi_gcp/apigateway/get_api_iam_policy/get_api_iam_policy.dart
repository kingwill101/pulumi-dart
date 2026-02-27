import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_iam_policy_args.dart';
import 'get_api_iam_policy_result.dart';

Future<GetApiIamPolicyResult> getApiIamPolicy(
  GetApiIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getApiIamPolicy:getApiIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyResult.fromMap(result);
}
