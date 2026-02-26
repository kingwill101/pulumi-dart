enum EngineMode {
  provisioned("provisioned"),
  serverless("serverless"),
  parallelQuery("parallelquery"),
  global("global");

  const EngineMode(this.value);
  final String value;

  static EngineMode fromValue(String value) {
    for (final item in EngineMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineMode value: $value');
  }
}
