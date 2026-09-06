import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_args.dart';
import 'get_pool_result.dart';

/// Get a Pool
///
/// Uses Azure REST API version 2025-01-21.
///
/// Other available API versions: 2023-10-30-preview, 2023-12-13-preview, 2024-03-26-preview, 2024-04-04-preview, 2024-10-19, 2025-09-20, 2026-04-17-preview, 2026-06-02, 2026-07-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devopsinfrastructure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_devopsinfrastructure_get_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolResult> getPool(
  GetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:devopsinfrastructure:getPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolResult.fromMap(result);
}

pulumi.Output<GetPoolResult> getPoolOutput(
  GetPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:devopsinfrastructure:getPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPoolResult.fromMap);
}
