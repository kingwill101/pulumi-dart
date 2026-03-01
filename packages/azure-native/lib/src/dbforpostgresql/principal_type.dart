enum PrincipalType {
  user("user"),
  servicePrincipal("servicePrincipal"),
  group("group");

  const PrincipalType(this.value);
  final String value;

  static PrincipalType fromValue(String value) {
    for (final item in PrincipalType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrincipalType value: $value');
  }
}

