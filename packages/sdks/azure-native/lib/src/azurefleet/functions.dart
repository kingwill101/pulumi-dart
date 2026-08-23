import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_args.dart';
import 'get_fleet_result.dart';

/// Get a Fleet
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-05-01-preview, 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurefleet [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurefleet_get_fleet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurefleet:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}
