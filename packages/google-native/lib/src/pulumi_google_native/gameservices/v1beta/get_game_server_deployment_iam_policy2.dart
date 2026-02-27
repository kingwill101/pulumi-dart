import 'package:pulumi/pulumi.dart' hide Config;
import 'get_game_server_deployment_iam_policy_args2.dart';
import 'get_game_server_deployment_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGameServerDeploymentIamPolicyResult2>
    getGameServerDeploymentIamPolicy2(
  GetGameServerDeploymentIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gameservices/v1beta:getGameServerDeploymentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGameServerDeploymentIamPolicyResult2.fromMap(result);
}
