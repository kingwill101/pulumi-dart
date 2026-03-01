/// The type of identity used for the NGroup. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the NGroup.
enum ResourceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned, UserAssigned"),
  valueNone("None");

  const ResourceIdentityType(this.value);
  final String value;

  static ResourceIdentityType fromValue(String value) {
    for (final item in ResourceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityType value: $value');
  }
}

