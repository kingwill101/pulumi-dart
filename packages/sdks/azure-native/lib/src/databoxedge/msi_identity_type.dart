/// Identity type
enum MsiIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const MsiIdentityType(this.wireValue);
  final String wireValue;

  static MsiIdentityType fromValue(String value) {
    for (final item in MsiIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MsiIdentityType value: $value');
  }
}
