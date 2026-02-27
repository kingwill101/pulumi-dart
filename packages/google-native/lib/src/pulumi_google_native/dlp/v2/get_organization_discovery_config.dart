import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_discovery_config_args.dart';
import 'get_organization_discovery_config_result.dart';

/// Gets a discovery configuration.
Future<GetOrganizationDiscoveryConfigResult> getOrganizationDiscoveryConfig(
  GetOrganizationDiscoveryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getOrganizationDiscoveryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationDiscoveryConfigResult.fromMap(result);
}
