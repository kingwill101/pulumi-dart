/// The type.
enum IdentityManagementTypes {
  notSpecified("NotSpecified"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  actor("Actor"),
  delegatedResourceIdentity("DelegatedResourceIdentity");

  const IdentityManagementTypes(this.value);
  final String value;

  static IdentityManagementTypes fromValue(String value) {
    for (final item in IdentityManagementTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityManagementTypes value: $value');
  }
}

