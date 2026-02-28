/// Defines the type of technology used by the confidential instance.
enum ConfidentialInstanceConfigConfidentialInstanceType {
  confidentialInstanceTypeUnspecified("CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED"),
  sev("SEV"),
  sevSnp("SEV_SNP"),
  tdx("TDX");

  const ConfidentialInstanceConfigConfidentialInstanceType(this.value);
  final String value;

  static ConfidentialInstanceConfigConfidentialInstanceType fromValue(
      String value) {
    for (final item
        in ConfidentialInstanceConfigConfidentialInstanceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ConfidentialInstanceConfigConfidentialInstanceType value: $value');
  }
}
