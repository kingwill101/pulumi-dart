/// The type of remediation that can be applied.
enum RemediationRemediationType2 {
  remediationTypeUnspecified("REMEDIATION_TYPE_UNSPECIFIED"),
  mitigation("MITIGATION"),
  noFixPlanned("NO_FIX_PLANNED"),
  noneAvailable("NONE_AVAILABLE"),
  vendorFix("VENDOR_FIX"),
  workaround("WORKAROUND");

  const RemediationRemediationType2(this.value);
  final String value;

  static RemediationRemediationType2 fromValue(String value) {
    for (final item in RemediationRemediationType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemediationRemediationType2 value: $value');
  }
}
