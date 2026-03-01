/// The DB scale method.
enum SAPDatabaseScaleMethod {
  scaleUp("ScaleUp");

  const SAPDatabaseScaleMethod(this.value);
  final String value;

  static SAPDatabaseScaleMethod fromValue(String value) {
    for (final item in SAPDatabaseScaleMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDatabaseScaleMethod value: $value');
  }
}

