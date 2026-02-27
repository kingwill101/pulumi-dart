import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_game_server_deployment_iam_policy_gameservices_v1beta_args.dart';
import 'get_game_server_deployment_iam_policy_gameservices_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetGameServerDeploymentIamPolicyGameservicesV1betaResult>
    getGameServerDeploymentIamPolicyGameservicesV1beta(
  GetGameServerDeploymentIamPolicyGameservicesV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gameservices/v1beta:getGameServerDeploymentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGameServerDeploymentIamPolicyGameservicesV1betaResult.fromMap(
      result);
}
