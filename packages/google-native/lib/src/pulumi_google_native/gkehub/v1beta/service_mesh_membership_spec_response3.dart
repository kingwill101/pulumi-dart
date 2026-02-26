// ignore_for_file: unused_element, unnecessary_cast

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecResponse3 {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final String controlPlane;

  /// Enables automatic Service Mesh management.
  final String management;

  ServiceMeshMembershipSpecResponse3({
    required this.controlPlane,
    required this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlane'] = controlPlane;
    map['management'] = management;
    return map;
  }

  factory ServiceMeshMembershipSpecResponse3.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecResponse3(
      controlPlane: map['controlPlane'] as String,
      management: map['management'] as String,
    );
  }
}
