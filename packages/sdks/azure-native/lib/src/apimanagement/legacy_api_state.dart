/// Indication whether or not the legacy Configuration API (v1) should be exposed on the API Management service. Value is optional but must be 'Enabled' or 'Disabled'. If 'Disabled', legacy Configuration API (v1) will not be available for self-hosted gateways. Default value is 'Enabled'
enum LegacyApiState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const LegacyApiState(this.wireValue);
  final String wireValue;

  static LegacyApiState fromValue(String value) {
    for (final item in LegacyApiState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LegacyApiState value: $value');
  }
}
