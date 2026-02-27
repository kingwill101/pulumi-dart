// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCloudVmCluster.
class GetCloudVmClusterArgs {
  /// The ID of the VM Cluster.
  final pulumi.Input<String> cloudVmClusterId;

  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetCloudVmClusterArgs({
    required this.cloudVmClusterId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudVmClusterId'] = cloudVmClusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterArgs(
      cloudVmClusterId: pulumi.Input.asInput<String>(map['cloudVmClusterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
