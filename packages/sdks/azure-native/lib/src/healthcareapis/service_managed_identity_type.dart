/// Type of identity being specified, currently SystemAssigned and None are allowed.
enum ServiceManagedIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const ServiceManagedIdentityType(this.wireValue);
  final String wireValue;

  static ServiceManagedIdentityType fromValue(String value) {
    for (final item in ServiceManagedIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceManagedIdentityType value: $value');
  }
}

