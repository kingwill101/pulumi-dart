/// The identity type.
enum FactoryIdentityType {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAssignedUserAssigned("SystemAssigned,UserAssigned");

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
