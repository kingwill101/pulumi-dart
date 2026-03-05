/// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
enum CustomDomainIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const CustomDomainIdentityType(this.wireValue);
  final String wireValue;

  static CustomDomainIdentityType fromValue(String value) {
    for (final item in CustomDomainIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomDomainIdentityType value: $value');
  }
}

