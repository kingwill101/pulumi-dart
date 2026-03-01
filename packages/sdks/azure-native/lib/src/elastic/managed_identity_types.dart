/// Managed identity type.
enum ManagedIdentityTypes {
  valueSystemAssigned("SystemAssigned");

  const ManagedIdentityTypes(this.value);
  final String value;

  static ManagedIdentityTypes fromValue(String value) {
    for (final item in ManagedIdentityTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityTypes value: $value');
  }
}

