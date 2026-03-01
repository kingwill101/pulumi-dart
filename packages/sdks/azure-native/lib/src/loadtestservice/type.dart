/// Managed identity type to use for accessing encryption key Url.
enum Type {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

