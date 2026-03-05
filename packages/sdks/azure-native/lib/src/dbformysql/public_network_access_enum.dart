/// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
enum PublicNetworkAccessEnum {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessEnum(this.wireValue);
  final String wireValue;

  static PublicNetworkAccessEnum fromValue(String value) {
    for (final item in PublicNetworkAccessEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessEnum value: $value');
  }
}

