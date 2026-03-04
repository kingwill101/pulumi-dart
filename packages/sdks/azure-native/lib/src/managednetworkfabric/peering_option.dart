/// Peering option list.
enum PeeringOption {
  valueOptionA("OptionA"),
  valueOptionB("OptionB");

  const PeeringOption(this.wireValue);
  final String wireValue;

  static PeeringOption fromValue(String value) {
    for (final item in PeeringOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PeeringOption value: $value');
  }
}
