/// Station Connection Mode.
enum StationConnectionMode {
  active("Active"),
  passive("Passive");

  const StationConnectionMode(this.wireValue);
  final String wireValue;

  static StationConnectionMode fromValue(String value) {
    for (final item in StationConnectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StationConnectionMode value: $value');
  }
}

