import 'package:pulumi/pulumi.dart';
import 'get_organization_replay_args2.dart';
import 'get_organization_replay_result2.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetOrganizationReplayResult2> getOrganizationReplay2(
  GetOrganizationReplayArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getOrganizationReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayResult2.fromMap(result);
}
