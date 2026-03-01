/// Server platform type for connection
enum SqlSourcePlatform {
  valueSqlOnPrem("SqlOnPrem");

  const SqlSourcePlatform(this.value);
  final String value;

  static SqlSourcePlatform fromValue(String value) {
    for (final item in SqlSourcePlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlSourcePlatform value: $value');
  }
}

