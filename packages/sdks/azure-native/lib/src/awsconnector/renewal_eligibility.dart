/// Property value
enum RenewalEligibility {
  eLIGIBLE("ELIGIBLE"),
  iNELIGIBLE("INELIGIBLE");

  const RenewalEligibility(this.wireValue);
  final String wireValue;

  static RenewalEligibility fromValue(String value) {
    for (final item in RenewalEligibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RenewalEligibility value: $value');
  }
}
