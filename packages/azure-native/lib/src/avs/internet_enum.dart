/// Connectivity to internet is enabled or disabled
enum InternetEnum {
  enabled("Enabled"),
  disabled("Disabled");

  const InternetEnum(this.value);
  final String value;

  static InternetEnum fromValue(String value) {
    for (final item in InternetEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternetEnum value: $value');
  }
}

