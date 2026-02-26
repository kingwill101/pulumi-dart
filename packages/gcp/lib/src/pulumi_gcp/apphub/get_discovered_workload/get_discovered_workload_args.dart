// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDiscoveredWorkload.
class GetDiscoveredWorkloadArgs {
  /// The location of the discovered workload.
  final Input<String> location;

  /// The host project of the discovered workload.
  final Input<String>? project;

  /// The uri of the workload (instance group managed by the Instance Group Manager). Example: "//compute.googleapis.com/projects/1/regions/us-east1/instanceGroups/id1"
  final Input<String> workloadUri;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workloadUri: Input.asInput<String>(map['workloadUri']),
    );
  }
}
