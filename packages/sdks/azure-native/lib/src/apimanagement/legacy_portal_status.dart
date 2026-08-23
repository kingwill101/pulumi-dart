/// Status of legacy portal in the API Management service.
enum LegacyPortalStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const LegacyPortalStatus(this.wireValue);
  final String wireValue;

  static LegacyPortalStatus fromValue(String value) {
    for (final item in LegacyPortalStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LegacyPortalStatus value: $value');
  }
}
