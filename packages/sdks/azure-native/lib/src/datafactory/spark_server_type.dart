/// The type of Spark server.
enum SparkServerType {
  valueSharkServer("SharkServer"),
  valueSharkServer2("SharkServer2"),
  valueSparkThriftServer("SparkThriftServer");

  const SparkServerType(this.wireValue);
  final String wireValue;

  static SparkServerType fromValue(String value) {
    for (final item in SparkServerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkServerType value: $value');
  }
}
