// ignore_for_file: unused_element, unnecessary_cast

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecResponseGkehubV1beta {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final String controlPlane;

  /// Enables automatic Service Mesh management.
  final String management;

  ServiceMeshMembershipSpecResponseGkehubV1beta({
    required this.controlPlane,
    required this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlane'] = controlPlane;
    map['management'] = management;
    return map;
  }

  factory ServiceMeshMembershipSpecResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecResponseGkehubV1beta(
      controlPlane: map['controlPlane'] as String,
      management: map['management'] as String,
    );
  }
}
