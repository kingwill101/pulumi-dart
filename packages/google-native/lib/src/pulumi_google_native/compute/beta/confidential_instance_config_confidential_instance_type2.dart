/// Defines the type of technology used by the confidential instance.
enum ConfidentialInstanceConfigConfidentialInstanceType2 {
  confidentialInstanceTypeUnspecified("CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED"),
  sev("SEV"),
  sevSnp("SEV_SNP");

  const ConfidentialInstanceConfigConfidentialInstanceType2(this.value);
  final String value;

  static ConfidentialInstanceConfigConfidentialInstanceType2 fromValue(
      String value) {
    for (final item
        in ConfidentialInstanceConfigConfidentialInstanceType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ConfidentialInstanceConfigConfidentialInstanceType2 value: $value');
  }
}
