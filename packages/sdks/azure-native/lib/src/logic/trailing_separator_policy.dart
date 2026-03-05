/// The trailing separator policy.
enum TrailingSeparatorPolicy {
  valueNotSpecified("NotSpecified"),
  valueNotAllowed("NotAllowed"),
  valueOptional("Optional"),
  valueMandatory("Mandatory");

  const TrailingSeparatorPolicy(this.wireValue);
  final String wireValue;

  static TrailingSeparatorPolicy fromValue(String value) {
    for (final item in TrailingSeparatorPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrailingSeparatorPolicy value: $value');
  }
}

