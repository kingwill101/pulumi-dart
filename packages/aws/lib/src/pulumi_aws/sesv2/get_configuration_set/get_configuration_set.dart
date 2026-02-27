import 'package:pulumi/pulumi.dart';
import 'get_configuration_set_args.dart';
import 'get_configuration_set_result.dart';

/// Data source for managing an AWS SESv2 (Simple Email V2) Configuration Set.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetConfigurationSetResult> getConfigurationSet(
  GetConfigurationSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getConfigurationSet:getConfigurationSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigurationSetResult.fromMap(result);
}
