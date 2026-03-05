import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovery_source_args.dart';
import 'get_discovery_source_result.dart';
import 'get_map_args.dart';
import 'get_map_dependency_view_for_all_machines_args.dart';
import 'get_map_dependency_view_for_all_machines_result.dart';
import 'get_map_result.dart';

/// Get a DiscoverySourceResource
///
/// Uses Azure REST API version 2025-01-31-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dependencymap [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dependencymap_get_discovery_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoverySourceResult> getDiscoverySource(
  GetDiscoverySourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dependencymap:getDiscoverySource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoverySourceResult.fromMap(result);
}

/// Get a MapsResource
///
/// Uses Azure REST API version 2025-01-31-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dependencymap [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dependencymap_get_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMapResult> getMap(
  GetMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dependencymap:getMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMapResult.fromMap(result);
}

/// Get dependencies for all machines
///
/// Uses Azure REST API version 2025-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_dependencymap_get_map_dependency_view_for_all_machines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMapDependencyViewForAllMachinesResult>
getMapDependencyViewForAllMachines(
  GetMapDependencyViewForAllMachinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dependencymap:getMapDependencyViewForAllMachines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMapDependencyViewForAllMachinesResult.fromMap(result);
}
