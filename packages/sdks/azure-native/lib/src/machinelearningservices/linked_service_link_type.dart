/// Type of the link target.
enum LinkedServiceLinkType {
  valueSynapse("Synapse");

  const LinkedServiceLinkType(this.wireValue);
  final String wireValue;

  static LinkedServiceLinkType fromValue(String value) {
    for (final item in LinkedServiceLinkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedServiceLinkType value: $value');
  }
}
