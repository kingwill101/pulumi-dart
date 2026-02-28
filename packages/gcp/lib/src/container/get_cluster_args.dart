// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_container_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// The location (zone or region) this cluster has been
  /// created in. One of `location`, `region`, `zone`, or a provider-level `zone` must
  /// be specified.
  final pulumi.Input<String>? location;

  /// The name of the cluster.
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetClusterArgs].
  /// [location] The location (zone or region) this cluster has been
  /// [name] The name of the cluster.
  /// [project] The project in which the resource belongs. If it
  GetClusterArgs({
    String? location,
    required String name,
    String? project,
  })  : location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
