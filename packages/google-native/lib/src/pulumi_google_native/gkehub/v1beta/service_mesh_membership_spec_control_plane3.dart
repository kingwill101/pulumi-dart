/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlane3 {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlane3(this.value);
  final String value;

  static ServiceMeshMembershipSpecControlPlane3 fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecControlPlane3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecControlPlane3 value: $value');
  }
}
