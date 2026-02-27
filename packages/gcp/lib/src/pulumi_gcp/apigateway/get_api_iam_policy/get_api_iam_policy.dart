import 'package:pulumi/pulumi.dart';
import 'get_api_iam_policy_args.dart';
import 'get_api_iam_policy_result.dart';

Future<GetApiIamPolicyResult> getApiIamPolicy(
  GetApiIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getApiIamPolicy:getApiIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiIamPolicyResult.fromMap(result);
}
