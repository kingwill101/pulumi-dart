/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagementGkehubV1alpha {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagementGkehubV1alpha(this.value);
  final String value;

  static ServiceMeshMembershipSpecManagementGkehubV1alpha fromValue(
      String value) {
    for (final item
        in ServiceMeshMembershipSpecManagementGkehubV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecManagementGkehubV1alpha value: $value');
  }
}
