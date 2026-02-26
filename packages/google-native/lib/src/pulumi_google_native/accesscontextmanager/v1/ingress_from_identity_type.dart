/// Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
enum IngressFromIdentityType {
  identityTypeUnspecified("IDENTITY_TYPE_UNSPECIFIED"),
  anyIdentity("ANY_IDENTITY"),
  anyUserAccount("ANY_USER_ACCOUNT"),
  anyServiceAccount("ANY_SERVICE_ACCOUNT");

  const IngressFromIdentityType(this.value);
  final String value;

  static IngressFromIdentityType fromValue(String value) {
    for (final item in IngressFromIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressFromIdentityType value: $value');
  }
}
