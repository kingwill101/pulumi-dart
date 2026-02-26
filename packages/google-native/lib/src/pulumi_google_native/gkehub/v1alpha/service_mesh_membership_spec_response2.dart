// ignore_for_file: unused_element, unnecessary_cast

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecResponse2 {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final String controlPlane;

  /// Determines which release channel to use for default injection and service mesh APIs.
  final String defaultChannel;

  /// Enables automatic Service Mesh management.
  final String management;

  ServiceMeshMembershipSpecResponse2({
    required this.controlPlane,
    required this.defaultChannel,
    required this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlane'] = controlPlane;
    map['defaultChannel'] = defaultChannel;
    map['management'] = management;
    return map;
  }

  factory ServiceMeshMembershipSpecResponse2.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecResponse2(
      controlPlane: map['controlPlane'] as String,
      defaultChannel: map['defaultChannel'] as String,
      management: map['management'] as String,
    );
  }
}
