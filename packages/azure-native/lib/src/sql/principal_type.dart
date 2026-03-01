/// Principal Type of the sever administrator.
enum PrincipalType {
  valueUser("User"),
  valueGroup("Group"),
  valueApplication("Application");

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

