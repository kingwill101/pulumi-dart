// ignore_for_file: unused_element, unnecessary_cast

import 'restore_workload_target_resource_gcp_resource.dart';

class RestoreWorkloadTargetResource {
  /// Output only. Details of the native Google Cloud resource created as part of restore.
  /// Structure is documented below.
  final RestoreWorkloadTargetResourceGcpResource? gcpResource;

  /// Creates a new [RestoreWorkloadTargetResource].
  /// [gcpResource] Output only. Details of the native Google Cloud resource created as part of restore.
  RestoreWorkloadTargetResource({
    this.gcpResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpResource': ?gcpResource == null ? null : gcpResource!.toMap(),
    };
  }

  factory RestoreWorkloadTargetResource.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadTargetResource(
      gcpResource: map['gcpResource'] == null ? null : RestoreWorkloadTargetResourceGcpResource.fromMap((map['gcpResource'] as Map).cast<String, dynamic>()),
    );
  }
}

