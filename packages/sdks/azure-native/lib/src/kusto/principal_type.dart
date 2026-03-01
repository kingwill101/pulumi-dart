/// Principal type.
enum PrincipalType {
  valueApp("App"),
  valueGroup("Group"),
  valueUser("User");

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

