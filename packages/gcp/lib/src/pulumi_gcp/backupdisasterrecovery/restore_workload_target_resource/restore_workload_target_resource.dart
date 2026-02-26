// ignore_for_file: unused_element, unnecessary_cast

import '../restore_workload_target_resource_gcp_resource/restore_workload_target_resource_gcp_resource.dart';

class RestoreWorkloadTargetResource {
  /// Output only. Details of the native Google Cloud resource created as part of restore.
  /// Structure is documented below.
  final RestoreWorkloadTargetResourceGcpResource? gcpResource;

  RestoreWorkloadTargetResource({
    this.gcpResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcpResourceValue = gcpResource;
    if (gcpResourceValue != null) {
      map['gcpResource'] = gcpResourceValue.toMap();
    }
    return map;
  }

  factory RestoreWorkloadTargetResource.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadTargetResource(
      gcpResource: map['gcpResource'] == null
          ? null
          : RestoreWorkloadTargetResourceGcpResource.fromMap(
              (map['gcpResource'] as Map).cast<String, dynamic>()),
    );
  }
}
