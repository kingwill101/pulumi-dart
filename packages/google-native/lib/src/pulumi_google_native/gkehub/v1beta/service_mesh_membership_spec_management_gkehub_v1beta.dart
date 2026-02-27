/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagementGkehubV1beta {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagementGkehubV1beta(this.value);
  final String value;

  static ServiceMeshMembershipSpecManagementGkehubV1beta fromValue(
      String value) {
    for (final item in ServiceMeshMembershipSpecManagementGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecManagementGkehubV1beta value: $value');
  }
}
