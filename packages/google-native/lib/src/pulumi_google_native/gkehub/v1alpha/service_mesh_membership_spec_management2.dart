/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagement2 {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagement2(this.value);
  final String value;

  static ServiceMeshMembershipSpecManagement2 fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecManagement2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecManagement2 value: $value');
  }
}
