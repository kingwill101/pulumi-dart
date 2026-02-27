import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_replay_policysimulator_v1beta1_args.dart';
import 'get_organization_replay_policysimulator_v1beta1_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetOrganizationReplayPolicysimulatorV1beta1Result>
    getOrganizationReplayPolicysimulatorV1beta1(
  GetOrganizationReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getOrganizationReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayPolicysimulatorV1beta1Result.fromMap(result);
}
