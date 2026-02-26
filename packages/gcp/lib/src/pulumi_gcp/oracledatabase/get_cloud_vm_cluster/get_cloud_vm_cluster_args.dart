// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCloudVmCluster.
class GetCloudVmClusterArgs {
  /// The ID of the VM Cluster.
  final Input<String> cloudVmClusterId;

  /// The location of the resource.
  ///
  /// - - -
  final Input<String> location;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

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
      cloudVmClusterId: Input.asInput<String>(map['cloudVmClusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
