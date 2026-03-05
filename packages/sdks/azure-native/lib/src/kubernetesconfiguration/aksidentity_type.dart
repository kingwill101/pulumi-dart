/// The identity type.
enum AKSIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const AKSIdentityType(this.wireValue);
  final String wireValue;

  static AKSIdentityType fromValue(String value) {
    for (final item in AKSIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AKSIdentityType value: $value');
  }
}

