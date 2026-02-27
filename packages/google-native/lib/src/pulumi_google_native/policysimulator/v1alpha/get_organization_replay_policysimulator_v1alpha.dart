import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_replay_policysimulator_v1alpha_args.dart';
import 'get_organization_replay_policysimulator_v1alpha_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetOrganizationReplayPolicysimulatorV1alphaResult>
    getOrganizationReplayPolicysimulatorV1alpha(
  GetOrganizationReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getOrganizationReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayPolicysimulatorV1alphaResult.fromMap(result);
}
