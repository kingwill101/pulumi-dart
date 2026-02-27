import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovery_config_args.dart';
import 'get_discovery_config_result.dart';

/// Gets a discovery configuration.
Future<GetDiscoveryConfigResult> getDiscoveryConfig(
  GetDiscoveryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getDiscoveryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveryConfigResult.fromMap(result);
}
