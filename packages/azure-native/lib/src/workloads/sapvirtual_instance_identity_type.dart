/// The type of managed identity assigned to this resource.
enum SAPVirtualInstanceIdentityType {
  none("None"),
  userAssigned("UserAssigned");

  const SAPVirtualInstanceIdentityType(this.value);
  final String value;

  static SAPVirtualInstanceIdentityType fromValue(String value) {
    for (final item in SAPVirtualInstanceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPVirtualInstanceIdentityType value: $value');
  }
}

