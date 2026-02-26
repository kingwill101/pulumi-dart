/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlane2 {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlane2(this.value);
  final String value;

  static ServiceMeshMembershipSpecControlPlane2 fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecControlPlane2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecControlPlane2 value: $value');
  }
}
