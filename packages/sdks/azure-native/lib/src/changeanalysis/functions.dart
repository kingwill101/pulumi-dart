import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_profile_args.dart';
import 'get_configuration_profile_result.dart';

/// A profile object that contains change analysis configuration, such as notification settings, for this subscription
///
/// Uses Azure REST API version 2020-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_changeanalysis_get_configuration_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfileResult> getConfigurationProfile(
  GetConfigurationProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:changeanalysis:getConfigurationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileResult.fromMap(result);
}
