/// Type of managed service identity (either system assigned, or none).
enum SystemAssignedServiceIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned");

  const SystemAssignedServiceIdentityType(this.value);
  final String value;

  static SystemAssignedServiceIdentityType fromValue(String value) {
    for (final item in SystemAssignedServiceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SystemAssignedServiceIdentityType value: $value');
  }
}

