/// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
enum ApimIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned, UserAssigned"),
  valueNone("None");

  const ApimIdentityType(this.value);
  final String value;

  static ApimIdentityType fromValue(String value) {
    for (final item in ApimIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApimIdentityType value: $value');
  }
}

