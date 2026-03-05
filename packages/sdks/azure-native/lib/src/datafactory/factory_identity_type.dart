/// The identity type.
enum FactoryIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const FactoryIdentityType(this.wireValue);
  final String wireValue;

  static FactoryIdentityType fromValue(String value) {
    for (final item in FactoryIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FactoryIdentityType value: $value');
  }
}

