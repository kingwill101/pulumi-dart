import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_iam_policy_args.dart';
import 'get_config_iam_policy_result.dart';

Future<GetConfigIamPolicyResult> getConfigIamPolicy(
  GetConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getConfigIamPolicy:getConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigIamPolicyResult.fromMap(result);
}
