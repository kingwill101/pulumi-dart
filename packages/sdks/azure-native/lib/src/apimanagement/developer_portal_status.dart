/// Status of developer portal in this API Management service.
enum DeveloperPortalStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DeveloperPortalStatus(this.wireValue);
  final String wireValue;

  static DeveloperPortalStatus fromValue(String value) {
    for (final item in DeveloperPortalStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeveloperPortalStatus value: $value');
  }
}
