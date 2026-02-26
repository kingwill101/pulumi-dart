/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagement3 {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagement3(this.value);
  final String value;

  static ServiceMeshMembershipSpecManagement3 fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecManagement3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecManagement3 value: $value');
  }
}
