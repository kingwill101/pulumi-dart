import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_storage_config_args.dart';
import 'get_instance_storage_config_result.dart';

/// Provides details about a specific Amazon Connect Instance Storage Config.
Future<GetInstanceStorageConfigResult> getInstanceStorageConfig(
  GetInstanceStorageConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getInstanceStorageConfig:getInstanceStorageConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceStorageConfigResult.fromMap(result);
}
