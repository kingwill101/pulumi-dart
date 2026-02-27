import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_replay_args.dart';
import 'get_organization_replay_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetOrganizationReplayResult> getOrganizationReplay(
  GetOrganizationReplayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getOrganizationReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayResult.fromMap(result);
}
