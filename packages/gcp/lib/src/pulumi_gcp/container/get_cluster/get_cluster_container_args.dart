// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterContainerArgs {
  /// The location (zone or region) this cluster has been
  /// created in. One of `location`, `region`, `zone`, or a provider-level `zone` must
  /// be specified.
  final pulumi.Input<String>? location;

  /// The name of the cluster.
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetClusterContainerArgs({
    this.location,
    required this.name,
    this.project,
  });

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

  factory GetClusterContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterContainerArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
