import 'package:pulumi/pulumi.dart';
import 'get_registry_args.dart';
import 'get_registry_result.dart';

/// Data source for managing an AWS Glue Registry.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getRegistry:getRegistry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}
