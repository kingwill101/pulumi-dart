/// The type of remediation that can be applied.
enum RemediationRemediationType3 {
  remediationTypeUnspecified("REMEDIATION_TYPE_UNSPECIFIED"),
  mitigation("MITIGATION"),
  noFixPlanned("NO_FIX_PLANNED"),
  noneAvailable("NONE_AVAILABLE"),
  vendorFix("VENDOR_FIX"),
  workaround("WORKAROUND");

  const RemediationRemediationType3(this.value);
  final String value;

  static RemediationRemediationType3 fromValue(String value) {
    for (final item in RemediationRemediationType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemediationRemediationType3 value: $value');
  }
}
