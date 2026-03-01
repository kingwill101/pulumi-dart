/// Whether to enforce certificate name check on HTTPS requests to all backend pools. No effect on non-HTTPS requests.
enum EnforceCertificateNameCheckEnabledState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnforceCertificateNameCheckEnabledState(this.value);
  final String value;

  static EnforceCertificateNameCheckEnabledState fromValue(String value) {
    for (final item in EnforceCertificateNameCheckEnabledState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnforceCertificateNameCheckEnabledState value: $value');
  }
}

