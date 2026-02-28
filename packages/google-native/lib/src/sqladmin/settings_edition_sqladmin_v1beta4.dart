/// Optional. The edition of the instance.
enum SettingsEditionSqladminV1beta4 {
  editionUnspecified("EDITION_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const SettingsEditionSqladminV1beta4(this.value);
  final String value;

  static SettingsEditionSqladminV1beta4 fromValue(String value) {
    for (final item in SettingsEditionSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsEditionSqladminV1beta4 value: $value');
  }
}
