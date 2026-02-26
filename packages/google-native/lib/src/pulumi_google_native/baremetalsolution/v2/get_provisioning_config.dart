import 'package:pulumi/pulumi.dart';
import 'get_provisioning_config_args.dart';
import 'get_provisioning_config_result.dart';

/// Get ProvisioningConfig by name.
Future<GetProvisioningConfigResult> getProvisioningConfig(
  GetProvisioningConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getProvisioningConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProvisioningConfigResult.fromMap(result);
}
