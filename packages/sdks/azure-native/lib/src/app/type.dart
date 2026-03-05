/// The type of probe.
enum Type {
  valueLiveness("Liveness"),
  valueReadiness("Readiness"),
  valueStartup("Startup");

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

