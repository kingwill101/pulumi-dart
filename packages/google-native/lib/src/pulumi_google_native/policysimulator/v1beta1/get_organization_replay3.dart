import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_replay_args3.dart';
import 'get_organization_replay_result3.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
Future<GetOrganizationReplayResult3> getOrganizationReplay3(
  GetOrganizationReplayArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getOrganizationReplay',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayResult3.fromMap(result);
}
