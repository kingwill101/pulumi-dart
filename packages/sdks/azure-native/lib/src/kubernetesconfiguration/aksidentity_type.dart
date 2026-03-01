/// The identity type.
enum AKSIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const AKSIdentityType(this.value);
  final String value;

  static AKSIdentityType fromValue(String value) {
    for (final item in AKSIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AKSIdentityType value: $value');
  }
}

