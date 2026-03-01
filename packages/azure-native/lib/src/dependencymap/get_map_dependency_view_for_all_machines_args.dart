// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dependency_process_filter.dart';

/// {@template pulumi_dependencymap_get_map_dependency_view_for_all_machines_args_doc}
/// Arguments for getMapDependencyViewForAllMachines.
/// {@endtemplate}
/// {@macro pulumi_dependencymap_get_map_dependency_view_for_all_machines_args_doc}
class GetMapDependencyViewForAllMachinesArgs {
  /// Filters for GetDependencyViewForAllMachines
  final pulumi.Input<DependencyProcessFilter>? filters;
  /// Maps resource name
  final pulumi.Input<String> mapName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMapDependencyViewForAllMachinesArgs].
  /// [filters] Filters for GetDependencyViewForAllMachines
  /// [mapName] Maps resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMapDependencyViewForAllMachinesArgs({
    DependencyProcessFilter? filters,
    required String mapName,
    required String resourceGroupName,
  }) :
      filters = pulumi.Input.asOptionalInput<DependencyProcessFilter>(filters),
      mapName = pulumi.Input.asInput<String>(mapName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<DependencyProcessFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'mapName': mapName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMapDependencyViewForAllMachinesArgs.fromMap(Map<String, dynamic> map) {
    return GetMapDependencyViewForAllMachinesArgs(
      filters: map['filters'] == null ? null : DependencyProcessFilter.fromMap((map['filters'] as Map).cast<String, dynamic>()),
      mapName: map['mapName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

