/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagement {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagement(this.value);
  final String value;

  static ServiceMeshMembershipSpecManagement fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecManagement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecManagement value: $value');
  }
}
