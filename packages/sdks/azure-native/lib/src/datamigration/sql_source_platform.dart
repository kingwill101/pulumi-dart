/// Server platform type for connection
enum SqlSourcePlatform {
  valueSqlOnPrem("SqlOnPrem");

  const SqlSourcePlatform(this.wireValue);
  final String wireValue;

  static SqlSourcePlatform fromValue(String value) {
    for (final item in SqlSourcePlatform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlSourcePlatform value: $value');
  }
}
