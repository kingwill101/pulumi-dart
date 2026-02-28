// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_get_discovered_workload_get_discovered_workload_args_doc}
/// Arguments for getDiscoveredWorkload.
/// {@endtemplate}
/// {@macro pulumi_apphub_get_discovered_workload_get_discovered_workload_args_doc}
class GetDiscoveredWorkloadArgs {
  /// The location of the discovered workload.
  final pulumi.Input<String> location;

  /// The host project of the discovered workload.
  final pulumi.Input<String>? project;

  /// The uri of the workload (instance group managed by the Instance Group Manager). Example: "//compute.googleapis.com/projects/1/regions/us-east1/instanceGroups/id1"
  final pulumi.Input<String> workloadUri;

  /// Creates a new [GetDiscoveredWorkloadArgs].
  /// [location] The location of the discovered workload.
  /// [project] The host project of the discovered workload.
  /// [workloadUri] The uri of the workload (instance group managed by the Instance Group Manager). Example: "//compute.googleapis.com/projects/1/regions/us-east1/instanceGroups/id1"
  GetDiscoveredWorkloadArgs({
    required String location,
    String? project,
    required String workloadUri,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        workloadUri = pulumi.Input.asInput<String>(workloadUri);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workloadUri: map['workloadUri'] as String,
    );
  }
}
