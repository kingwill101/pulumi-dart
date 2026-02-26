import 'package:pulumi/pulumi.dart';
import 'get_mute_config_args.dart';
import 'get_mute_config_result.dart';

/// Gets a mute config.
Future<GetMuteConfigResult> getMuteConfig(
  GetMuteConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getMuteConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMuteConfigResult.fromMap(result);
}
