/// The identity type.
enum FactoryIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const FactoryIdentityType(this.value);
  final String value;

  static FactoryIdentityType fromValue(String value) {
    for (final item in FactoryIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FactoryIdentityType value: $value');
  }
}

