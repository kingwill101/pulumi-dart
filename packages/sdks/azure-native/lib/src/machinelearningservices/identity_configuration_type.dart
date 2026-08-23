/// [Required] Specifies the type of identity framework.
enum IdentityConfigurationType {
  managed("Managed"),
  aMLToken("AMLToken"),
  userIdentity("UserIdentity");

  const IdentityConfigurationType(this.wireValue);
  final String wireValue;

  static IdentityConfigurationType fromValue(String value) {
    for (final item in IdentityConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityConfigurationType value: $value');
  }
}
