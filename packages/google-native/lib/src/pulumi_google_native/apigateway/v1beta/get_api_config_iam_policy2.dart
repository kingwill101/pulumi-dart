import 'package:pulumi/pulumi.dart' hide Config;
import 'get_api_config_iam_policy_args2.dart';
import 'get_api_config_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetApiConfigIamPolicyResult2> getApiConfigIamPolicy2(
  GetApiConfigIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getApiConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiConfigIamPolicyResult2.fromMap(result);
}
