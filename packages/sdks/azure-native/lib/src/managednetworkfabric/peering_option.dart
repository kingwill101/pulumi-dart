/// Peering option list.
enum PeeringOption {
  valueOptionA("OptionA"),
  valueOptionB("OptionB");

  const PeeringOption(this.value);
  final String value;

  static PeeringOption fromValue(String value) {
    for (final item in PeeringOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PeeringOption value: $value');
  }
}

