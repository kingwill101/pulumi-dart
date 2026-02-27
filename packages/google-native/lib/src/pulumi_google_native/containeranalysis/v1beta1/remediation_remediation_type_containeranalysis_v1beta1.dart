/// The type of remediation that can be applied.
enum RemediationRemediationTypeContaineranalysisV1beta1 {
  remediationTypeUnspecified("REMEDIATION_TYPE_UNSPECIFIED"),
  mitigation("MITIGATION"),
  noFixPlanned("NO_FIX_PLANNED"),
  noneAvailable("NONE_AVAILABLE"),
  vendorFix("VENDOR_FIX"),
  workaround("WORKAROUND");

  const RemediationRemediationTypeContaineranalysisV1beta1(this.value);
  final String value;

  static RemediationRemediationTypeContaineranalysisV1beta1 fromValue(
      String value) {
    for (final item
        in RemediationRemediationTypeContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RemediationRemediationTypeContaineranalysisV1beta1 value: $value');
  }
}
