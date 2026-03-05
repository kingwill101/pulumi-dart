enum EngineMode {
  provisioned("provisioned"),
  serverless("serverless"),
  parallelQuery("parallelquery"),
  global("global");

  const EngineMode(this.wireValue);
  final String wireValue;

  static EngineMode fromValue(String value) {
    for (final item in EngineMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineMode value: $value');
  }
}

