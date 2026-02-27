import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_replay_args4.dart';
import 'get_organization_replay_result4.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetOrganizationReplayResult4> getOrganizationReplay4(
  GetOrganizationReplayArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getOrganizationReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayResult4.fromMap(result);
}
