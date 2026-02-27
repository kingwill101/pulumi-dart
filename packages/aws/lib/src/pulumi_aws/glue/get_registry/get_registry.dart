import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_args.dart';
import 'get_registry_result.dart';

/// Data source for managing an AWS Glue Registry.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getRegistry:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}
