// ignore_for_file: unused_element, unnecessary_cast

class FeatureMembershipMesh {
  /// **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL
  final String? controlPlane;

  /// Whether to automatically manage Service Mesh. Can either be `MANAGEMENT_AUTOMATIC` or `MANAGEMENT_MANUAL`.
  final String? management;

  /// Creates a new [FeatureMembershipMesh].
  /// [controlPlane] **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL
  /// [management] Whether to automatically manage Service Mesh. Can either be `MANAGEMENT_AUTOMATIC` or `MANAGEMENT_MANUAL`.
  FeatureMembershipMesh({
    this.controlPlane,
    this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = controlPlaneValue;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = managementValue;
    }
    return map;
  }

  factory FeatureMembershipMesh.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipMesh(
      controlPlane:
          map['controlPlane'] == null ? null : map['controlPlane'] as String,
      management:
          map['management'] == null ? null : map['management'] as String,
    );
  }
}
