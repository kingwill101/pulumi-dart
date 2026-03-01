/// Azure reserved instance.
enum ReservedInstance {
  valueNone("None"),
  valueRI1Year("RI1Year"),
  valueRI3Year("RI3Year");

  const ReservedInstance(this.value);
  final String value;

  static ReservedInstance fromValue(String value) {
    for (final item in ReservedInstance.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservedInstance value: $value');
  }
}

