import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_mute_config_args.dart';
import 'get_organization_mute_config_result.dart';

/// Gets a mute config.
Future<GetOrganizationMuteConfigResult> getOrganizationMuteConfig(
  GetOrganizationMuteConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationMuteConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationMuteConfigResult.fromMap(result);
}
