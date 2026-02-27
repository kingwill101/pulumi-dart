import 'package:pulumi/pulumi.dart';
import 'get_configuration_profile_args.dart';
import 'get_configuration_profile_result.dart';

/// Provides access to an AppConfig Configuration Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetConfigurationProfileResult> getConfigurationProfile(
  GetConfigurationProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfile:getConfigurationProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileResult.fromMap(result);
}
