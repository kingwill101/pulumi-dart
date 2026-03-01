enum NfsExportOptionsSecurityFlavorsItem {
  securityFlavorUnspecified("SECURITY_FLAVOR_UNSPECIFIED"),
  authSys("AUTH_SYS"),
  krb5("KRB5"),
  krb5i("KRB5I"),
  krb5p("KRB5P");

  const NfsExportOptionsSecurityFlavorsItem(this.value);
  final String value;

  static NfsExportOptionsSecurityFlavorsItem fromValue(String value) {
    for (final item in NfsExportOptionsSecurityFlavorsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NfsExportOptionsSecurityFlavorsItem value: $value',
    );
  }
}
