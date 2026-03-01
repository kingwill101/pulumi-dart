/// The trailing separator policy.
enum TrailingSeparatorPolicy {
  valueNotSpecified("NotSpecified"),
  valueNotAllowed("NotAllowed"),
  valueOptional("Optional"),
  valueMandatory("Mandatory");

  const TrailingSeparatorPolicy(this.value);
  final String value;

  static TrailingSeparatorPolicy fromValue(String value) {
    for (final item in TrailingSeparatorPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrailingSeparatorPolicy value: $value');
  }
}

