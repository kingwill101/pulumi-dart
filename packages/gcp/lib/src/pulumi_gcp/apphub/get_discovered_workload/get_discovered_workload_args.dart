// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDiscoveredWorkload.
class GetDiscoveredWorkloadArgs {
  /// The location of the discovered workload.
  final pulumi.Input<String> location;

  /// The host project of the discovered workload.
  final pulumi.Input<String>? project;

  /// The uri of the workload (instance group managed by the Instance Group Manager). Example: "//compute.googleapis.com/projects/1/regions/us-east1/instanceGroups/id1"
  final pulumi.Input<String> workloadUri;

  GetDiscoveredWorkloadArgs({
    required this.location,
    this.project,
    required this.workloadUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadUri'] = workloadUri;
    return map;
  }

  factory GetDiscoveredWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredWorkloadArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workloadUri: pulumi.Input.asInput<String>(map['workloadUri']),
    );
  }
}
