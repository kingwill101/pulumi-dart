/// Auth Type
enum AuthType {
  valueAnonymous("Anonymous"),
  valueUserCredentials("UserCredentials"),
  valueSystemIdentity("SystemIdentity"),
  valueUserAssigned("UserAssigned");

  const AuthType(this.value);
  final String value;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}

