/// The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identities.
enum ManagedIdentityTypes {
  valueNone("None"),
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

