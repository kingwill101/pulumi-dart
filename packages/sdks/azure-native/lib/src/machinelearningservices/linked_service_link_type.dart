/// Type of the link target.
enum LinkedServiceLinkType {
  valueSynapse("Synapse");

  const LinkedServiceLinkType(this.value);
  final String value;

  static LinkedServiceLinkType fromValue(String value) {
    for (final item in LinkedServiceLinkType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedServiceLinkType value: $value');
  }
}

