/// [Required] Specifies the type of identity framework.
enum IdentityConfigurationType {
  valueManaged("Managed"),
  valueAMLToken("AMLToken"),
  valueUserIdentity("UserIdentity");

  const IdentityConfigurationType(this.value);
  final String value;

  static IdentityConfigurationType fromValue(String value) {
    for (final item in IdentityConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityConfigurationType value: $value');
  }
}

