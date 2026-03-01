/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlaneGkehubV1beta {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlaneGkehubV1beta(this.value);
  final String value;

  static ServiceMeshMembershipSpecControlPlaneGkehubV1beta fromValue(
    String value,
  ) {
    for (final item
        in ServiceMeshMembershipSpecControlPlaneGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceMeshMembershipSpecControlPlaneGkehubV1beta value: $value',
    );
  }
}
