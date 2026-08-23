/// The principal type of the user.
enum EntraPrincipalType {
  user("user"),
  servicePrincipal("servicePrincipal");

  const EntraPrincipalType(this.wireValue);
  final String wireValue;

  static EntraPrincipalType fromValue(String value) {
    for (final item in EntraPrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntraPrincipalType value: $value');
  }
}
