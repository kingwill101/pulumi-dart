/// The type of authentication to use when connecting to a target.
enum TargetAuthenticationType {
  aad("Aad"),
  sql("Sql");

  const TargetAuthenticationType(this.value);
  final String value;

  static TargetAuthenticationType fromValue(String value) {
    for (final item in TargetAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetAuthenticationType value: $value');
  }
}

