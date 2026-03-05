/// Managed identity type.
enum ManagedIdentityTypes {
  valueSystemAssigned("SystemAssigned");

  const ManagedIdentityTypes(this.wireValue);
  final String wireValue;

  static ManagedIdentityTypes fromValue(String value) {
    for (final item in ManagedIdentityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityTypes value: $value');
  }
}

