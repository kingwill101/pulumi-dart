/// The value indicating whether the RosettaNet PIP communication is synchronous.
enum RosettaNetResponseType {
  valueNotSpecified("NotSpecified"),
  valueSync("Sync"),
  valueAsync("Async");

  const RosettaNetResponseType(this.value);
  final String value;

  static RosettaNetResponseType fromValue(String value) {
    for (final item in RosettaNetResponseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetResponseType value: $value');
  }
}

