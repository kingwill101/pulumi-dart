import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_config_iam_policy_args.dart';
import 'get_api_config_iam_policy_result.dart';

Future<GetApiConfigIamPolicyResult> getApiConfigIamPolicy(
  GetApiConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apigateway/getApiConfigIamPolicy:getApiConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiConfigIamPolicyResult.fromMap(result);
}
