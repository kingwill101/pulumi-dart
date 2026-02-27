import 'package:pulumi/pulumi.dart';
import 'get_configuration_profiles_args.dart';
import 'get_configuration_profiles_result.dart';

/// Provides access to all Configuration Properties for an AppConfig Application. This will allow you to pass Configuration
/// Profile IDs to another resource.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetConfigurationProfilesResult> getConfigurationProfiles(
  GetConfigurationProfilesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfiles:getConfigurationProfiles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfilesResult.fromMap(result);
}
