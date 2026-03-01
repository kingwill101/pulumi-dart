/// Replica Role in availability group.
enum Role {
  primary("Primary"),
  secondary("Secondary");

  const Role(this.value);
  final String value;

  static Role fromValue(String value) {
    for (final item in Role.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Role value: $value');
  }
}

