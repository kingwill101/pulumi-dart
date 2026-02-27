import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_runtimeconfig_v1beta1_args.dart';
import 'get_config_runtimeconfig_v1beta1_result.dart';

/// Gets information about a RuntimeConfig resource.
Future<GetConfigRuntimeconfigV1beta1Result> getConfigRuntimeconfigV1beta1(
  GetConfigRuntimeconfigV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigRuntimeconfigV1beta1Result.fromMap(result);
}
