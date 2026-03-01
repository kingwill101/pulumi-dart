/// Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
enum EgressFromIdentityType {
  identityTypeUnspecified("IDENTITY_TYPE_UNSPECIFIED"),
  anyIdentity("ANY_IDENTITY"),
  anyUserAccount("ANY_USER_ACCOUNT"),
  anyServiceAccount("ANY_SERVICE_ACCOUNT");

  const EgressFromIdentityType(this.value);
  final String value;

  static EgressFromIdentityType fromValue(String value) {
    for (final item in EgressFromIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressFromIdentityType value: $value');
  }
}
