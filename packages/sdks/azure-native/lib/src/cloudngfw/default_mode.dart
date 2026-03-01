/// Mode for default rules creation
enum DefaultMode {
  valueIPS("IPS"),
  valueFIREWALL("FIREWALL"),
  valueNONE("NONE");

  const DefaultMode(this.value);
  final String value;

  static DefaultMode fromValue(String value) {
    for (final item in DefaultMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultMode value: $value');
  }
}

