/// Optional. The edition of the instance.
enum SettingsEdition2 {
  editionUnspecified("EDITION_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const SettingsEdition2(this.value);
  final String value;

  static SettingsEdition2 fromValue(String value) {
    for (final item in SettingsEdition2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsEdition2 value: $value');
  }
}
