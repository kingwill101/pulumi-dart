import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_profile_args.dart';
import 'get_configuration_profile_result.dart';

/// Provides access to an AppConfig Configuration Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetConfigurationProfileResult> getConfigurationProfile(
  GetConfigurationProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfile:getConfigurationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileResult.fromMap(result);
}
