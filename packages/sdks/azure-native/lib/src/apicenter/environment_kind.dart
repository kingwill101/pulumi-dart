/// Environment kind.
enum EnvironmentKind {
  development("development"),
  testing("testing"),
  staging("staging"),
  production("production");

  const EnvironmentKind(this.wireValue);
  final String wireValue;

  static EnvironmentKind fromValue(String value) {
    for (final item in EnvironmentKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentKind value: $value');
  }
}

