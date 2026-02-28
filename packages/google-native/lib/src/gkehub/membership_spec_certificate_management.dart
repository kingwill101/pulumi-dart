/// Specifies workload certificate management.
enum MembershipSpecCertificateManagement {
  certificateManagementUnspecified("CERTIFICATE_MANAGEMENT_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const MembershipSpecCertificateManagement(this.value);
  final String value;

  static MembershipSpecCertificateManagement fromValue(String value) {
    for (final item in MembershipSpecCertificateManagement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MembershipSpecCertificateManagement value: $value');
  }
}
