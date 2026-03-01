/// The type of managed identity that is being selected.
enum ManagedServiceIdentitySelectorType {
  valueSystemAssignedIdentity("SystemAssignedIdentity"),
  valueUserAssignedIdentity("UserAssignedIdentity");

  const ManagedServiceIdentitySelectorType(this.value);
  final String value;

  static ManagedServiceIdentitySelectorType fromValue(String value) {
    for (final item in ManagedServiceIdentitySelectorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedServiceIdentitySelectorType value: $value');
  }
}

