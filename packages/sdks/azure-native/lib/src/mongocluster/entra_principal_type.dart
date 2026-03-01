/// The principal type of the user.
enum EntraPrincipalType {
  user("user"),
  servicePrincipal("servicePrincipal");

  const EntraPrincipalType(this.value);
  final String value;

  static EntraPrincipalType fromValue(String value) {
    for (final item in EntraPrincipalType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntraPrincipalType value: $value');
  }
}

