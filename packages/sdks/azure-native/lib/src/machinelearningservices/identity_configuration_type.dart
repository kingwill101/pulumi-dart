/// [Required] Specifies the type of identity framework.
enum IdentityConfigurationType {
  valueManaged("Managed"),
  valueAMLToken("AMLToken"),
  valueUserIdentity("UserIdentity");

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
