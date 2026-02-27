import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provisioning_config_args.dart';
import 'get_provisioning_config_result.dart';

/// Get ProvisioningConfig by name.
Future<GetProvisioningConfigResult> getProvisioningConfig(
  GetProvisioningConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getProvisioningConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProvisioningConfigResult.fromMap(result);
}
