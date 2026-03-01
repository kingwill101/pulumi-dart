/// Property value
enum RenewalEligibility {
  eLIGIBLE("ELIGIBLE"),
  iNELIGIBLE("INELIGIBLE");

  const RenewalEligibility(this.value);
  final String value;

  static RenewalEligibility fromValue(String value) {
    for (final item in RenewalEligibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RenewalEligibility value: $value');
  }
}

