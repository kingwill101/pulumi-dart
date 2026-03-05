/// Mode for default rules creation
enum DefaultMode {
  valueIPS("IPS"),
  valueFIREWALL("FIREWALL"),
  valueNONE("NONE");

  const DefaultMode(this.wireValue);
  final String wireValue;

  static DefaultMode fromValue(String value) {
    for (final item in DefaultMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultMode value: $value');
  }
}

