/// Specifies the security level for the driver connection to the data store. PreferredUnSecured : prefer unsecured, allow fallback to secured connection if required. OnlyUnSecured : strictly unsecured, no fallback.
enum NetezzaSecurityLevelType {
  preferredUnSecured("PreferredUnSecured"),
  onlyUnSecured("OnlyUnSecured");

  const NetezzaSecurityLevelType(this.wireValue);
  final String wireValue;

  static NetezzaSecurityLevelType fromValue(String value) {
    for (final item in NetezzaSecurityLevelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetezzaSecurityLevelType value: $value');
  }
}
