/// Environment kind.
enum EnvironmentKind {
  development("development"),
  testing("testing"),
  staging("staging"),
  production("production");

  const EnvironmentKind(this.value);
  final String value;

  static EnvironmentKind fromValue(String value) {
    for (final item in EnvironmentKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentKind value: $value');
  }
}

