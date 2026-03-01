/// Station Connection Mode.
enum StationConnectionMode {
  active("Active"),
  passive("Passive");

  const StationConnectionMode(this.value);
  final String value;

  static StationConnectionMode fromValue(String value) {
    for (final item in StationConnectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StationConnectionMode value: $value');
  }
}

