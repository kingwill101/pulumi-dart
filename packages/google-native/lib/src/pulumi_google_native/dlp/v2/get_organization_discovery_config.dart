import 'package:pulumi/pulumi.dart';
import 'get_organization_discovery_config_args.dart';
import 'get_organization_discovery_config_result.dart';

/// Gets a discovery configuration.
Future<GetOrganizationDiscoveryConfigResult> getOrganizationDiscoveryConfig(
  GetOrganizationDiscoveryConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationDiscoveryConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationDiscoveryConfigResult.fromMap(result);
}
