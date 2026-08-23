/// Describes operator to be matched
enum IsDeviceOperator {
  equal("Equal");

  const IsDeviceOperator(this.wireValue);
  final String wireValue;

  static IsDeviceOperator fromValue(String value) {
    for (final item in IsDeviceOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsDeviceOperator value: $value');
  }
}
