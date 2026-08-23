/// Managed identity type to use for accessing encryption key Url.
enum Type {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned");

  const Type(this.wireValue);
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
