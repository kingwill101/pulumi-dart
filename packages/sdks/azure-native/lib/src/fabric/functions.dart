import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fabric_capacity_args.dart';
import 'get_fabric_capacity_result.dart';

/// Get a FabricCapacity
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_fabric_get_fabric_capacity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFabricCapacityResult> getFabricCapacity(
  GetFabricCapacityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:fabric:getFabricCapacity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFabricCapacityResult.fromMap(result);
}
