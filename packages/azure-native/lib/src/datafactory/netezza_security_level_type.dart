/// Specifies the security level for the driver connection to the data store. PreferredUnSecured : prefer unsecured, allow fallback to secured connection if required. OnlyUnSecured : strictly unsecured, no fallback.
enum NetezzaSecurityLevelType {
  valuePreferredUnSecured("PreferredUnSecured"),
  valueOnlyUnSecured("OnlyUnSecured");

  const NetezzaSecurityLevelType(this.value);
  final String value;

  static NetezzaSecurityLevelType fromValue(String value) {
    for (final item in NetezzaSecurityLevelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetezzaSecurityLevelType value: $value');
  }
}

